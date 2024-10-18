// Fill out your copyright notice in the Description page of Project Settings.


#include "Motion Components/CPP_FloatingComponent.h"

// Sets default values for this component's properties
UCPP_FloatingComponent::UCPP_FloatingComponent()
{
	/// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	/// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

}

// Called when the game starts
void UCPP_FloatingComponent::BeginPlay()
{
	Super::BeginPlay();

	// Save the initial local offset 
	// If the player reference is not valid, subtract the zero vector
	// This will allow the object to float in place if the player reference is not valid

}

void UCPP_FloatingComponent::UpdateFloating(float DeltaTime)
{
	if (AActor* Owner = GetOwner())
	{
		// Get the current location of the object
		FVector CurrentLocation = Owner->GetActorLocation();
        
		// Define floating parameters
		float Time = GetWorld()->GetTimeSeconds();
        
		// Update the Z position using a sine wave for smooth floating motion
		CurrentLocation.Z += FMath::Sin(Time * FloatSpeed) * FloatAmplitude;

		// Apply the new location to the actor
		Owner->SetActorLocation(CurrentLocation);
	}
}

// Called every frame
void UCPP_FloatingComponent::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);
}