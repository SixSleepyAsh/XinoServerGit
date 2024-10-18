// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UObject/Interface.h"
#include "CPP_CharacterVitalsInter.generated.h"

/// This enum is used to define the type of damage that is applied to the character
/// The UENUM macro is used to expose this enum to Blueprints
/// The BlueprintType specifier is used to define the type of the enum in Blueprints
/// The DisplayName specifier is used to define the name of the enum value in Blueprints
UENUM(BlueprintType)
enum class EDamageType : uint8
{
	None = 0       UMETA(DisplayName = "None"),
	Physical       UMETA(DisplayName = "Physical"),
	Magical	       UMETA(DisplayName = "Magical"),
	Environmental  UMETA(DisplayName = "Environmental")
};

UENUM(BlueprintType)
enum class EDamageResponse : uint8
{
	None = 0      UMETA(DisplayName = "None"),
	Basic         UMETA(DisplayName = "Basic"),
	Stagger       UMETA(DisplayName = "Stagger"),
	KnockDown	  UMETA(DisplayName = "KnockDown"),
};


/// This struct is used to store information about the damage that is applied to the character
/// The USTRUCT macro is used to expose this struct to Blueprints
/// The GENERATED_BODY macro is used to generate the necessary code for the struct
/// The UPROPERTY macro is used to expose the properties of the struct to Blueprints
USTRUCT(BlueprintType)
struct FDamageInfo
{
	GENERATED_BODY()

	// The amount of damage dealt
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Damage")
	float DamageAmount;

	// Should interrupt the character's animation
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Damage")
	bool bShouldInterrupt;

	// Can the Damage be blocked
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Damage")
	bool bCanBlock;
	
	// The type of damage dealt (Physical, Magical, Environmental, etc.)
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Damage")
	EDamageType DamageType;

	// The type of response to the damage dealt (Basic, Stagger, KnockDown, etc.)
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Damage")
	EDamageResponse DamageResponse;

	// The actor who caused the damage
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Damage")
	AActor* DamageCauser;

	// The location where the damage originated
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Damage")
	FVector DamageCauserLocation;

	// Default constructor
	FDamageInfo()
		: DamageAmount(0.0f),
		  bShouldInterrupt(false),
		  bCanBlock(true),
		  DamageType(EDamageType::None),
		  DamageResponse(EDamageResponse::None),
		  DamageCauser(nullptr),
		  DamageCauserLocation(FVector::ZeroVector)
	{}
};



// This class does not need to be modified.
UINTERFACE(MinimalAPI)
class UCPP_CharacterVitalsInter : public UInterface
{
	GENERATED_BODY()
};

/**
 * 
 */
class PROJECT_SPELLCASTING_API ICPP_CharacterVitalsInter
{
	GENERATED_BODY()

	// Add interface functions to this class. This is the class that will be inherited to implement this interface.

/// Health and Stamina functions
/// These functions are used to manage the health and stamina of the character
/// The UFUNCTION macro is used to expose these functions to Blueprints
/// The Category specifier is used to group these functions in the Blueprint editor
public:
	
	/// @brief Get the current health of the character
	/// @return	float - The current health of the character
	UFUNCTION(BlueprintImplementableEvent, BlueprintCallable, Category="Vitals|Health" )
	float GetCurrentHealth() const;

	/// @brief Get the max health of the character
	/// @return Max health of the character
	UFUNCTION( BlueprintImplementableEvent, BlueprintCallable, Category="Vitals|Health" )
	float GetMaxHealth() const;

	/// @brief Apply damage to the character
	/// @param DamageInfo - The information about the damage that is applied to the character
	/// @return Indicates if the damage was applied or not
	UFUNCTION( BlueprintImplementableEvent, BlueprintCallable,  Category="Vitals|Health" )
	bool ApplyDamage( FDamageInfo DamageInfo );

	/// @brief  Heal the character
	/// @param HealAmount - The amount of health that is restored to the character
	UFUNCTION( BlueprintImplementableEvent, BlueprintCallable,  Category="Vitals|Health" )
	void Heal( float HealAmount );

	/// @brief Get the current stamina of the character
	/// @return The current stamina of the character 
	UFUNCTION( BlueprintImplementableEvent, BlueprintCallable,  Category="Vitals|Stamina" )
	float GetCurrentStamina() const ;

	/// @brief Get the max stamina of the character
	/// @return The max stamina of the character
	UFUNCTION( BlueprintImplementableEvent, BlueprintCallable,  Category="Vitals|Stamina" )
	float GetMaxStamina() const;

	/// @brief 
	/// @param StaminaCost - Amount of stamina to use
	UFUNCTION( BlueprintImplementableEvent, BlueprintCallable, Category="Vitals|Stamina" )
	void UseStamina( float StaminaCost );

	// Regenerate stamina
	UFUNCTION( BlueprintImplementableEvent, BlueprintCallable, Category="Vitals|Stamina" )
	void RegenerateStamina( float StaminaAmount );

	// Utility function to check if the character is dead
	UFUNCTION( BlueprintImplementableEvent, BlueprintCallable, Category="Vitals|Utility" )
	bool IsDead() const;

	// Utility function to check if the character is blocking
	UFUNCTION( BlueprintImplementableEvent, BlueprintCallable, Category="Vitals|Utility" )
	bool IsBlocking() const;
	
};
