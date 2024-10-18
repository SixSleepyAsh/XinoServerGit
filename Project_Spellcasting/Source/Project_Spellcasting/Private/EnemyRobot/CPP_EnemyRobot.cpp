// Fill out your copyright notice in the Description page of Project Settings.


#include "EnemyRobot/CPP_EnemyRobot.h"

#include "Engine/DamageEvents.h"
#include "Kismet/GameplayStatics.h"
#include "Perception/AISenseConfig_Sight.h"
#include "Perception/AISense_Hearing.h"
#include "Perception/AISense_Sight.h"
#include "Runtime/AIModule/Classes/AIController.h"
#include "Runtime/AIModule/Classes/Perception/AIPerceptionComponent.h"

// Sets default values
ACPP_EnemyRobot::ACPP_EnemyRobot()
{
 	// Set this character to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

}

FGenericTeamId ACPP_EnemyRobot::GetGenericTeamId() const
{
	return FGenericTeamId(2);
}

// Called when the game starts or when spawned
void ACPP_EnemyRobot::BeginPlay()
{
	Super::BeginPlay();

	SetAIPerceptionData();
}

void ACPP_EnemyRobot::DrawDebug() const
{
	DrawDebugSphere(GetWorld(), GetActorLocation(), MeleeRange, 24, FColor::Red, false, 0.1f);
}

void ACPP_EnemyRobot::SetAIPerceptionData()
{
	// Get the AI Controller

	AAIController* AIController = Cast<AAIController>(GetController());

	if (AIController)
	{
		// Get the Perception Component
		UAIPerceptionComponent* PerceptionComponent = AIController->FindComponentByClass<UAIPerceptionComponent>();
		if (PerceptionComponent)
		{
			/// Get the AI sense config for Sight
			UAISenseConfig_Sight* SightConfig = Cast<UAISenseConfig_Sight>(PerceptionComponent->GetSenseConfig( UAISense::GetSenseID( UAISense_Sight::StaticClass() ) ) );
			if (!SightConfig)
			{
				UE_LOG(LogTemp, Warning, TEXT("Enemy: Sight Config not found!"));
				return;
			}

			// Set the Sight properties using the enemy's parameters
			SightConfig->SightRadius = SightRange;
			SightConfig->LoseSightRadius = LoseSightRange;
			SightConfig->PeripheralVisionAngleDegrees = SightAngle;
			SightConfig->SetMaxAge( SightMemoryTime );  // This will define how long the enemy will remember the player after losing sight

			
			// Set up detection by affiliation (make sure to detect enemies)
			SightConfig->DetectionByAffiliation.bDetectEnemies = true;
			SightConfig->DetectionByAffiliation.bDetectFriendlies = true;
			SightConfig->DetectionByAffiliation.bDetectNeutrals = true;

			// Apply these changes to the perception component
			PerceptionComponent->ConfigureSense(*SightConfig);
			PerceptionComponent->RequestStimuliListenerUpdate();
			
		}
		else
		{
			UE_LOG(LogTemp, Warning, TEXT("Enemy: Perception Component not found!"));
		}
		
	}
	else
	{
		UE_LOG(LogTemp, Warning, TEXT("Enemy: AI Controller not found!"));
	}
}

ETeamAttitude::Type ACPP_EnemyRobot::GetTeamAttitudeTowards(const AActor& Other) const
{
	const IGenericTeamAgentInterface* TeamAgent = Cast<const IGenericTeamAgentInterface>(&Other);
	if (TeamAgent)
	{
		// If the other actor has a team ID, compare it to this AI's team ID
		const FGenericTeamId OtherTeamId = TeamAgent->GetGenericTeamId();
        
		if ( OtherTeamId == FGenericTeamId(1) )  // Player's team
		{
			return ETeamAttitude::Hostile;  // Treat player as an enemy
		}
	}

	return ETeamAttitude::Neutral;  // Default to neutral for actors not assigned a team
}

bool ACPP_EnemyRobot::SpinAttack()
{
	if (bDebugDraw)
	{
		UE_LOG(LogTemp, Warning, TEXT("Enemy: Spin Attack!"));
		DrawDebugSphere(GetWorld(), GetActorLocation(), MeleeRange, 24, FColor::Blue, false, 1.1f);
	}

	// Get the player character
	ACharacter* PlayerCharacter = UGameplayStatics::GetPlayerCharacter(GetWorld(), 0);

	
	// If the player is within melee range, deal damage
	if (PlayerCharacter && FVector::Dist(PlayerCharacter->GetActorLocation(), GetActorLocation()) <= MeleeRange)
	{
		if (bDebugDraw)
			UE_LOG(LogTemp, Warning, TEXT("Enemy: Player is within melee range!"));
		
		return true;
	}
	else
	{
		UE_LOG(LogTemp, Warning, TEXT("Enemy: Player is not within melee range!"));
	}

	return false;
}

// Called every frame
void ACPP_EnemyRobot::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

	// Draw debug information
	if (bDebugDraw)
	{
		DrawDebug();
	}
}

// Called to bind functionality to input
void ACPP_EnemyRobot::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);

}

