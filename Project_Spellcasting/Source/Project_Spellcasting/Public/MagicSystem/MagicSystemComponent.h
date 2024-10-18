// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "Spell/CPP_Spell.h"
#include "MagicSystemComponent.generated.h"


UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )
class PROJECT_SPELLCASTING_API UMagicSystemComponent : public UActorComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	UMagicSystemComponent();

	// The spells this character can use
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Magic")
	TArray<ACPP_Spell*> SpellBook;

	//The current amount of charges the actor has
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Magic")
	float CurrentCharges = 0.0f;

	//The maximum amount of charges the actor can have
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Magic")
	float MaxCharges = 100.0f;
	
	// Pop the first spell from the spellbook
	// @return A Spell that was removed from the actor or nullptr if the spell was not found
	UFUNCTION(BlueprintCallable, Category = "Magic")
	ACPP_Spell* RemoveSpell();

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

		
};
