// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "CPP_PatrolRoute.generated.h"

UCLASS()
class PROJECT_SPELLCASTING_API ACPP_PatrolRoute : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ACPP_PatrolRoute();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	// Give it a spline component
	UPROPERTY(VisibleAnywhere, BlueprintReadWrite, Category = "Patrol Route")
	class USplineComponent* PatrolRoute;

	// Patrol Index
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Patrol Route")
	int32 PatrolIndex;

	// Direction of patrol {-1, 1}
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Patrol Route", meta = (ClampMin = "-1", ClampMax = "1") )
	int32 PatrolDirection;

	// Get the spline point as a world position
	UFUNCTION(BlueprintCallable, Category = "Patrol Route")
	FVector GetPatrolPoint();

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

};
