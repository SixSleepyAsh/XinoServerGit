// Fill out your copyright notice in the Description page of Project Settings.


#include "PlayerCharacter/Abilities/CPP_Ability.h"

// Sets default values
ACPP_Ability::ACPP_Ability()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

}

// Called when the game starts or when spawned
void ACPP_Ability::BeginPlay()
{
	Super::BeginPlay();
	
}

// Called every frame
void ACPP_Ability::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

