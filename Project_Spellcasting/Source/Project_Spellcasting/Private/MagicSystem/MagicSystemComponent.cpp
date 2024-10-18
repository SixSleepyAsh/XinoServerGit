// Fill out your copyright notice in the Description page of Project Settings.


#include "MagicSystem/MagicSystemComponent.h"

// Sets default values for this component's properties
UMagicSystemComponent::UMagicSystemComponent()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	// ...
}


ACPP_Spell* UMagicSystemComponent::RemoveSpell()
{
	// pull a spell from the spellbook

	if (SpellBook.Num() <= 0)
	{
		return nullptr;
	}

	ACPP_Spell* Spell = SpellBook[0];
	SpellBook.RemoveAt(0);

	// Decrease Charges
	CurrentCharges -= Spell->SpellCharges;
	
	return Spell;
}

// Called when the game starts
void UMagicSystemComponent::BeginPlay()
{
	Super::BeginPlay();

	// ...
	
}


// Called every frame
void UMagicSystemComponent::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// ...
}

