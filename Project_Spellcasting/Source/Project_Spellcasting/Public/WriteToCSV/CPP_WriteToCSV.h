// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Kismet/BlueprintFunctionLibrary.h"
#include "UObject/NoExportTypes.h"
#include "CPP_WriteToCSV.generated.h"


/// This struct records the player's health
USTRUCT(BlueprintType)
struct FHealth_Data
{
    GENERATED_BODY()

    /// The player's health at the start of the game
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Health")
    float PlayerStartingHealth;
	/// The player's health at the end of the game
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Health")
    float PlayerEndingHealth;
	/// The amount of healing, if any, the player received
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Health")
    float PlayerHealingDone;
	/// The total amount of damage taken by the player
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Health")
    float PlayerTotalDamageTaken;
	/// The fire damage taken by the player
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Health")
    float PlayerFireDamageTaken;
	/// The water damage taken by the player
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Health")
    float PlayerWaterDamageTaken;
	/// The earth damage taken by the player
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Health")
    float PlayerEarthDamageTaken;
	/// How many times the player died
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Health")
    int32 PlayerDeaths;
};

/// This struct records the player's mana system
USTRUCT(BlueprintType)
struct FMana_Data
{
    GENERATED_BODY()

	/// The amount of spell charges the player has at the start of the game
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    float PlayerStartingCharges;
	/// The amount of spell charges the player has at the end of the game
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    float PlayerEndingCharges;
	/// The total amount of spells gained across the play through
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    int32 PlayerSpellsGained;
	/// The amount of times the player ran out of charges
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    int32 PlayerSpellsLost;
	/// The amount of times a player willingly chose to switch to a new element
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    int32 PlayerSpellsSwitched;
	/// The amount of times the player used the fire melee attack
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    int32 FireSpellMeleeUsage;
	/// The amount of times the player used the fire special attack
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    int32 FireSpellSpecialUsage;
	/// The amount of times the player used the earth melee attack
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    int32 EarthSpellMeleeUsage;
	/// The amount of times the player used the earth special attack
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    int32 EarthSpellSpecialUsage;
	/// The amount of time the player used the water melee attack
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    int32 WaterSpellMeleeUsage;
	/// The amount of times the player used the water special attack
    UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Telemetry|Mana")
    int32 WaterSpellSpecialUsage;
};

USTRUCT(BlueprintType)
struct FCombat_Data
{
    GENERATED_BODY()
};

USTRUCT(BlueprintType)
struct FMiscellaneous_Data
{
    GENERATED_BODY()
};

USTRUCT()
struct FTelemetry_Data : public FTableRowBase
{
    GENERATED_BODY()
};


UCLASS()
class PROJECT_SPELLCASTING_API UCPP_WriteToCSV : public UBlueprintFunctionLibrary
{
	GENERATED_BODY()

	public:
	
	/// Writes a string to .csv file
	/// @param FileName	   - The .CSV we are writing to
	/// @param DataToWrite - The actual data being written
	/// @param bAppend	   - Should a new string be added to an existing file
	/// @param Separator   - Comma separated values
	/// @param FileType	   - The type of file to write
	UFUNCTION(BlueprintCallable, Category = "WriteToCSV")
	static void WriteToCSV(const FString FileName, const FString DataToWrite, const bool bAppend = true, const FString Separator = ",", const FString FileType = ".csv");
};
