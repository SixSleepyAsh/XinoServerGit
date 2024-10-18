// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "CPP_FloatingComponent.generated.h"


UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class PROJECT_SPELLCASTING_API UCPP_FloatingComponent : public UActorComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UCPP_FloatingComponent();

protected:
	// Called when the game starts

	virtual void BeginPlay() override;

public:
	// Called every frame

	UFUNCTION(BlueprintCallable, Category = "Floating")
	void UpdateFloating(float DeltaTime);
	
	////////////////////////////////
	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;
	
    ////////////////////////////////
	// Variables
    ////////////////////////////////
    
    // The Speed of the Floating
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Floating")
    float FloatSpeed = 2.0f;
    
    
    // The Amplitude of the Floating
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Floating")
    float FloatAmplitude = 1.0f;

private:
    
    FVector InitialLocation;  
    
};
