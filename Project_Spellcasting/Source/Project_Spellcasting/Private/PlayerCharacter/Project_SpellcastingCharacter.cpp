// Copyright Epic Games, Inc. All Rights Reserved.

#include "PlayerCharacter/Project_SpellcastingCharacter.h"
#include "Engine/LocalPlayer.h"
#include "Camera/CameraComponent.h"
#include "Components/CapsuleComponent.h"
#include "GameFramework/CharacterMovementComponent.h"
#include "GameFramework/SpringArmComponent.h"
#include "GameFramework/Controller.h"
#include "EnhancedInputComponent.h"
#include "EnhancedInputSubsystems.h"
#include "InputActionValue.h"
#include "Blueprint/UserWidget.h"
#include "Kismet/KismetSystemLibrary.h"
#include "MagicSystem/CPP_MagicSystemInterface.h"
#include "MagicSystem/MagicContainer/CPP_MagicContainer.h"

DEFINE_LOG_CATEGORY(LogTemplateCharacter);

//////////////////////////////////////////////////////////////////////////
// AProject_SpellcastingCharacter

AProject_SpellcastingCharacter::AProject_SpellcastingCharacter()
{
	// Set default value for JumpHeight
	BlockJumpHeight = 1;

	// Set size for collision capsule
	GetCapsuleComponent()->InitCapsuleSize(42.f, 96.0f);
		
	// Don't rotate when the controller rotates. Let that just affect the camera.
	bUseControllerRotationPitch = false;
	bUseControllerRotationYaw = false;
	bUseControllerRotationRoll = false;

	// Configure character movement
	GetCharacterMovement()->bOrientRotationToMovement = true; // Character moves in the direction of input...	
	GetCharacterMovement()->RotationRate = FRotator(0.0f, 500.0f, 0.0f); // ...at this rotation rate

	// Configure jump and other movement parameters
	GetCharacterMovement()->JumpZVelocity = BlockJumpHeight * BaseJumpHeight;
	GetCharacterMovement()->AirControl = 0.35f;
	GetCharacterMovement()->MaxWalkSpeed = 500.f;
	GetCharacterMovement()->MinAnalogWalkSpeed = 20.f;
	GetCharacterMovement()->BrakingDecelerationWalking = 2000.f;
	GetCharacterMovement()->BrakingDecelerationFalling = 1500.0f;

	// Create a camera boom
	CameraBoom = CreateDefaultSubobject<USpringArmComponent>(TEXT("CameraBoom"));
	CameraBoom->SetupAttachment(RootComponent);
	CameraBoom->TargetArmLength = 400.0f; 
	CameraBoom->bUsePawnControlRotation = true; 

	// Create a follow camera
	FollowCamera = CreateDefaultSubobject<UCameraComponent>(TEXT("FollowCamera"));
	FollowCamera->SetupAttachment(CameraBoom, USpringArmComponent::SocketName); 
	FollowCamera->bUsePawnControlRotation = false; 
}

void AProject_SpellcastingCharacter::BeginPlay()
{
	Super::BeginPlay();

	// Create and hide the popup text widget
	if (PopupTextClass != nullptr)
	{
		PopupTextInstance = CreateWidget<UUserWidget>(GetWorld(), PopupTextClass);
		if (PopupTextInstance != nullptr)
		{
			PopupTextInstance->AddToViewport();
			PopupTextInstance->SetVisibility(ESlateVisibility::Hidden); // Start hidden
		}
	}

	// Start the timer to periodically check for nearby magic actors
	GetWorld()->GetTimerManager().SetTimer(
		CheckMagicActorsTimerHandle, 
		this, 
		&AProject_SpellcastingCharacter::CheckForNearbyMagicActors, 
		CheckInterval, 
		true
	);
}

FGenericTeamId AProject_SpellcastingCharacter::GetGenericTeamId() const
{
	return FGenericTeamId(1);
}

void AProject_SpellcastingCharacter::EndPlay(const EEndPlayReason::Type EndPlayReason)
{
	Super::EndPlay(EndPlayReason);

	// Clear the timer to avoid calling the function after the character is destroyed
	GetWorld()->GetTimerManager().ClearTimer(CheckMagicActorsTimerHandle);
}



void AProject_SpellcastingCharacter::CheckForNearbyMagicActors()
{
	// Get all overlapping actors within the radius
	TArray<AActor*> OverlappingActors;
	UKismetSystemLibrary::SphereOverlapActors(
		GetWorld(),
		GetActorLocation(),
		ProximityRadius,
		TArray<TEnumAsByte<EObjectTypeQuery>>(),
		AActor::StaticClass(),
		TArray<AActor*>(),
		OverlappingActors
	);

	bool bIsNearMagicActor = false;

	// Check if any overlapping actor is of type ACPP_MagicContainer or a derived class
	for (AActor* Actor : OverlappingActors)
	{
		if (Actor && Actor != this)
		{
			// Check if the actor is a magic container or derived from it and implements the interface
			if (Actor->IsA(ACPP_MagicContainer::StaticClass()) && 
				Actor->GetClass()->ImplementsInterface(UCPP_MagicSystemInterface::StaticClass()))
			{
				CurrentContainerTarget = Actor;
				bIsNearMagicActor = true;
				break;
			}
		}
	}

	// Show or hide popup based on proximity
	if (bIsNearMagicActor)
	{
		ShowPopupText();
	}
	else
	{
		HidePopupText();
	}

	// Debug Draw radius

	if(bShowDebugDraw)
		DrawDebugSphere(GetWorld(), GetActorLocation(), ProximityRadius, 12, FColor::Green, false, 0.5f);
}



void AProject_SpellcastingCharacter::ShowPopupText() const
{
	if (PopupTextInstance && !PopupTextInstance->IsInViewport())
	{
		PopupTextInstance->AddToViewport();
	}
	
	PopupTextInstance->SetVisibility(ESlateVisibility::Visible);
}

void AProject_SpellcastingCharacter::HidePopupText() const
{
	if (PopupTextInstance)
	{
		PopupTextInstance->SetVisibility(ESlateVisibility::Hidden);
	}
}


//////////////////////////////////////////////////////////////////////////
// Input

void AProject_SpellcastingCharacter::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	// Add Input Mapping Context
	if (APlayerController* PlayerController = Cast<APlayerController>(GetController()))
	{
		if (UEnhancedInputLocalPlayerSubsystem* Subsystem = ULocalPlayer::GetSubsystem<UEnhancedInputLocalPlayerSubsystem>(PlayerController->GetLocalPlayer()))
		{
			Subsystem->AddMappingContext(DefaultMappingContext, 0);
		}
	}
	
	// Set up action bindings
	if (UEnhancedInputComponent* EnhancedInputComponent = Cast<UEnhancedInputComponent>(PlayerInputComponent)) {
		
		// Jumping
		EnhancedInputComponent->BindAction(JumpAction, ETriggerEvent::Started, this, &ACharacter::Jump);
		EnhancedInputComponent->BindAction(JumpAction, ETriggerEvent::Completed, this, &ACharacter::StopJumping);

		// Moving
		EnhancedInputComponent->BindAction(MoveAction, ETriggerEvent::Triggered, this, &AProject_SpellcastingCharacter::Move);

		// Looking
		EnhancedInputComponent->BindAction(LookAction, ETriggerEvent::Triggered, this, &AProject_SpellcastingCharacter::Look);
	}
	else
	{
		UE_LOG(LogTemplateCharacter, Error, TEXT("'%s' Failed to find an Enhanced Input component! This template is built to use the Enhanced Input system. If you intend to use the legacy system, then you will need to update this C++ file."), *GetNameSafe(this));
	}
}

void AProject_SpellcastingCharacter::Move(const FInputActionValue& Value)
{
	// input is a Vector2D
	FVector2D MovementVector = Value.Get<FVector2D>();

	if (Controller != nullptr)
	{
		// find out which way is forward
		const FRotator Rotation = Controller->GetControlRotation();
		const FRotator YawRotation(0, Rotation.Yaw, 0);

		// get forward vector
		const FVector ForwardDirection = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::X);
	
		// get right vector 
		const FVector RightDirection = FRotationMatrix(YawRotation).GetUnitAxis(EAxis::Y);

		// add movement 
		AddMovementInput(ForwardDirection, MovementVector.Y);
		AddMovementInput(RightDirection, MovementVector.X);
	}
}

void AProject_SpellcastingCharacter::Look(const FInputActionValue& Value)
{
	// input is a Vector2D
	FVector2D LookAxisVector = Value.Get<FVector2D>();

	if (Controller != nullptr)
	{
		// add yaw and pitch input to controller
		AddControllerYawInput(LookAxisVector.X);
		AddControllerPitchInput(LookAxisVector.Y);
	}
}