// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "PatrolRoute/CPP_PatrolRoute.h"
#include "UObject/Interface.h"
#include "CPP_EnemyAI.generated.h"

// This class does not need to be modified.
UINTERFACE(MinimalAPI)
class UCPP_EnemyAI : public UInterface
{
	GENERATED_BODY()
};


// Enumerations for the different types of Movement Speed

UENUM(BlueprintType)
enum class EMovementSpeed : uint8
{
	MovementSpeed_None = 0 UMETA(DisplayName = "None"),
	MovementSpeed_Slow UMETA(DisplayName = "Walking"),
	MovementSpeed_Fast UMETA(DisplayName = "Running")
};

/**
 * 
 */
class PROJECT_SPELLCASTING_API ICPP_EnemyAI
{
	GENERATED_BODY()

	// Add interface functions to this class. This is the class that will be inherited to implement this interface.
public:

	/// Get the Patrol Route of the enemy
	/// @return The patrol route of the enemy
	UFUNCTION(BlueprintCallable, BlueprintImplementableEvent, Category = "EnemyAI|Utility")
	ACPP_PatrolRoute* GetPatrolRoute();

	/// Set the movement speed of the enemy
	/// @param Speed - The speed of the enemy
	/// @reuturn The speed of the enemy
	UFUNCTION(BlueprintCallable, BlueprintImplementableEvent, Category = "EnemyAI|Utility")
	float SetMovementSpeed(EMovementSpeed Speed);


	

	
};
