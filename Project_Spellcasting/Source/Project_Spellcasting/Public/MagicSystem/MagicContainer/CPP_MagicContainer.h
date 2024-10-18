// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "MagicSystem/CPP_MagicSystemInterface.h"
#include "CPP_MagicContainer.generated.h"

UCLASS()
class PROJECT_SPELLCASTING_API ACPP_MagicContainer : public AActor, public ICPP_MagicSystemInterface
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ACPP_MagicContainer();

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Spawn")
	float ContainerSpellSpawnHeight = 100.0f;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Spawn")
	float ContainerSpellSpawnRadius = 200.0f;

	/// Turn on and off debug drawing
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Debug")
	bool bDebugDraw = false;

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;
	
	UFUNCTION(BlueprintCallable, Category = "Magic System")
	virtual void MoveToContainer(AActor* Actor);


public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;
};
