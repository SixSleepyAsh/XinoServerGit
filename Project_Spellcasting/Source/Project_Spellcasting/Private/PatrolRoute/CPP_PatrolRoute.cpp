// Fill out your copyright notice in the Description page of Project Settings.


#include "PatrolRoute/CPP_PatrolRoute.h"
#include "Components/SplineComponent.h"

// Sets default values
ACPP_PatrolRoute::ACPP_PatrolRoute()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
	
	PatrolRoute = CreateDefaultSubobject<USplineComponent>(TEXT("PatrolRoute"));
	PatrolRoute->SetupAttachment(RootComponent); // Attach it to the root or another component


}

// Called when the game starts or when spawned
void ACPP_PatrolRoute::BeginPlay()
{
	Super::BeginPlay();
	
}

FVector ACPP_PatrolRoute::GetPatrolPoint()
{
	// Get the world location of the spline point
	return PatrolRoute->GetLocationAtSplinePoint( PatrolIndex, ESplineCoordinateSpace::World );
}

// Called every frame
void ACPP_PatrolRoute::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

