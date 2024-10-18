// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "GenericTeamAgentInterface.h"
#include "GameFramework/Character.h"
#include "Logging/LogMacros.h"
#include "Project_SpellcastingCharacter.generated.h"

class USpringArmComponent;
class UCameraComponent;
class UInputMappingContext;
class UInputAction;
struct FInputActionValue;

DECLARE_LOG_CATEGORY_EXTERN(LogTemplateCharacter, Log, All);

UCLASS(config=Game)
class AProject_SpellcastingCharacter : public ACharacter, public IGenericTeamAgentInterface
{
	GENERATED_BODY()

	/** Camera boom positioning the camera behind the character */
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Camera, meta = (AllowPrivateAccess = "true"))
	USpringArmComponent* CameraBoom;

	/** Follow camera */
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = Camera, meta = (AllowPrivateAccess = "true"))
	UCameraComponent* FollowCamera;
	
	/** MappingContext */
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	UInputMappingContext* DefaultMappingContext;

	/** Jump Input Action */
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	UInputAction* JumpAction;

	/** Move Input Action */
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	UInputAction* MoveAction;

	/** Look Input Action */
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	UInputAction* LookAction;
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	UUserWidget* PopupTextInstance;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = Input, meta = (AllowPrivateAccess = "true"))
	AActor* CurrentContainerTarget;

public:
	AProject_SpellcastingCharacter();
	
	/// How much the jump height should be multiplied by
	/// This is used to allow for different jump heights
	/// after deciding the base jump height
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Character Movement | Jump")
	float BlockJumpHeight;
	
	/// The base jump height for the character
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Character Movement | Jump")
	float BaseJumpHeight = 700.0f;
	
	// Editable radius for checking proximity
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Magic System")
	float ProximityRadius = 250.0f;

	// Reference to the popup widget (WBP_PopupText)
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "UI")
	TSubclassOf<UUserWidget> PopupTextClass;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Magic System")
	FTimerHandle CheckMagicActorsTimerHandle;

	// How often to check for nearby magic actors (in seconds)
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Magic System", meta = (AllowPrivateAccess = "true"))
	float CheckInterval = 0.5f; // Default: Check every half second
	
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Debugging")
	bool bShowDebugDraw = false;

protected:

	/** Called for movement input */
	void Move(const FInputActionValue& Value);

	/** Called for looking input */
	void Look(const FInputActionValue& Value);
			

protected:
	// APawn interface
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;
	
	// To add mapping context
	virtual void BeginPlay();

	// Override to set the player's team ID
	virtual FGenericTeamId GetGenericTeamId() const override;
	
	// To remove mapping context
	void EndPlay(EEndPlayReason::Type EndPlayReason);

	// Function to check proximity to actors that implement CPP_MagicSystemInterface
	void CheckForNearbyMagicActors();
	
	// Function to show/hide the popup text
	void ShowPopupText() const;
	void HidePopupText() const;

public:
	/** Returns CameraBoom subobject **/
	FORCEINLINE class USpringArmComponent* GetCameraBoom() const { return CameraBoom; }
	/** Returns FollowCamera subobject **/
	FORCEINLINE class UCameraComponent* GetFollowCamera() const { return FollowCamera; }
};

