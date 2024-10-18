// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GenericTeamAgentInterface.h"
#include "GameFramework/Character.h"
#include "CPP_EnemyRobot.generated.h"

class ACPP_PatrolRoute;

UCLASS()
class PROJECT_SPELLCASTING_API ACPP_EnemyRobot : public ACharacter, public IGenericTeamAgentInterface
{
	GENERATED_BODY()

public:
	// Sets default values for this character's properties
	ACPP_EnemyRobot();

	// Override to set the player's team ID
	virtual FGenericTeamId GetGenericTeamId() const override;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemy | Stats")
	float MeleeRange = 100.0f;

	// The walking speed of the enemy
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemy | Stats")
	float WalkSpeed = 250.0f;

	// The running speed of the enemy
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemy | Stats")
	float RunSpeed = 500.0f;
	// The Sight Range of the enemy (in cm)
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemy | Stats")
	float SightRange = 800.0f;

	// The Sight Angle of the enemy (in degrees)
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemy | Stats")
	float SightAngle = 60.0f;

	// Sight Memory Time
	// This is the time the enemy will remember the player after they leave the sight range
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemy | Stats")
	float SightMemoryTime = 5.0f;
	
	// Lose Sight Range
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemy | Stats")
	float LoseSightRange = 1200.0f;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemy | Debug");
	bool bDebugDraw = false;

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	void DrawDebug() const;

	// The Patrol Route for the enemy
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Enemy | Patrol")
	class ACPP_PatrolRoute* PatrolRoute;

	UFUNCTION( BlueprintCallable, Category = "Enemy" )
	void SetAIPerceptionData();
	
	virtual ETeamAttitude::Type GetTeamAttitudeTowards(const AActor& Other) const override;

	UFUNCTION(BlueprintCallable, Category = "Enemy")
	bool SpinAttack();

	
public:
	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	// Called to bind functionality to input
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;

};
