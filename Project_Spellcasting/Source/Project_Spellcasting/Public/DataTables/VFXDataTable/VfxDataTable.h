// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AkAudioEvent.h"
#include "NiagaraSystem.h"
#include "Engine/DataTable.h"
#include "MagicSystem/Spell/CPP_Spell.h"
#include "VfxDataTable.generated.h"


/**
 * 
 */

USTRUCT(BlueprintType)
struct FVfxDataTable : public FTableRowBase
{
	GENERATED_USTRUCT_BODY()

    // This will usually be the same as the row name
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "VFX")
	FName VfxId; // Unique ID for the VFX ( Used for referencing in code / blueprints )
	
	// Name of the VFX 
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "VFX")
	FName VfxName;

	// The element of the VFX (Fire, Water, Earth, Air)
	UPROPERTY( EditAnywhere, BlueprintReadWrite, Category = "VFX" )
	ESpellElement VfxElement;

	// Reference to a Niagara particle system (modern system in UE)
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "VFX")
	UNiagaraSystem* NiagaraVfx; // For Niagara particle systems

	// Optionally, you can add a reference to the sound that plays along with the VFX
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "VFX")
	UAkAudioEvent* VfxSound;
};
