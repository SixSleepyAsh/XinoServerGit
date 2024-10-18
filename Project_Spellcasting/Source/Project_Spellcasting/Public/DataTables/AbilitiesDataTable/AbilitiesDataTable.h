// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "NiagaraSystem.h"
#include "Engine/DataTable.h"
#include "MagicSystem/Spell/CPP_Spell.h"
#include "PlayerCharacter/Abilities/CPP_Ability.h"
#include "Akgameplaystatics.h"
#include "AbilitiesDataTable.generated.h"


/**
 * 
 */
USTRUCT(BlueprintType)
struct FAbilitiesDataTable: public FTableRowBase
{
	GENERATED_USTRUCT_BODY()

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Abilities")
	FName AbilityId;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Abilities")
	FName AbilityName;

	// The element of the VFX (Fire, Water, Earth, Air)
	UPROPERTY( EditAnywhere, BlueprintReadWrite, Category = "Abilities" )
	ESpellElement AbilityElement;

	// The Blueprint class that will be spawned when the ability is activated
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Abilities")
	TSubclassOf<ACPP_Ability> AbilityClass;

	// // Reference to a Niagara particle system 
	// UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Abilities | FX")
	// UNiagaraSystem* NiagaraVfx; // For Niagara particle systems
	//
	// // Add a Reference to the WWise Sound Event that plays along with the VFX
	// UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Abilities | FX")
	// UAkAudioEvent* AbilitySound;
};
