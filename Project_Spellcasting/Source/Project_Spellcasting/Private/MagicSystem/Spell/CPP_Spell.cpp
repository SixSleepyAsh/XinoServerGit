#include "MagicSystem/Spell/CPP_Spell.h"
#include "GameFramework/ProjectileMovementComponent.h"
#include "Kismet/GameplayStatics.h"
#include "MagicSystem/SpellManager/CPP_SpellManager.h"

ACPP_Spell::ACPP_Spell()
{
	PrimaryActorTick.bCanEverTick = true;

	// Set default values
	SpellCharges = 25.0f;
	SpellSpeed = 600.0f;
	SpellGravity = 0.0f;
	IsHoming = false;

	// Initialize the projectile movement component
	ProjectileMovementComponent = CreateDefaultSubobject<UProjectileMovementComponent>(TEXT("ProjectileMovementComponent"));
	ProjectileMovementComponent->InitialSpeed = SpellSpeed;
	ProjectileMovementComponent->MaxSpeed = SpellSpeed;
	ProjectileMovementComponent->ProjectileGravityScale = SpellGravity; // Gravity
	ProjectileMovementComponent->bIsHomingProjectile = IsHoming; // Set whether it's homing
}


void ACPP_Spell::BeginPlay()
{
	Super::BeginPlay();

	if (IsHoming && SpellTarget)
	{
		ProjectileMovementComponent->bIsHomingProjectile = true;
		ProjectileMovementComponent->HomingTargetComponent = SpellTarget->GetRootComponent();
	}

	// Find the SpellPool in the level
	SpellPool =
		Cast<ACPP_SpellManager>(UGameplayStatics::GetActorOfClass(GetWorld(),ACPP_SpellManager::StaticClass()));
}


void ACPP_Spell::ResetProperties()
{
	
	 // SpellCharges = 1 This is a bug, it shouldn't change the charges
	SpellTarget = nullptr;
	
	if (ProjectileMovementComponent)
	{
		ProjectileMovementComponent->StopMovementImmediately();
		// Disable the movement component to prevent it from being affected by physics
		ProjectileMovementComponent->Deactivate();
	}

	// Optionally hide the actor
	SetActorHiddenInGame(true);
	SetActorLocation( FVector::Zero() );
}


void ACPP_Spell::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}
