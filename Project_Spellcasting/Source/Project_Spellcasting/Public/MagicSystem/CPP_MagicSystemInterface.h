#pragma once

#include "CoreMinimal.h"
#include "UObject/Interface.h"
#include "CPP_MagicSystemInterface.generated.h"


enum class ESpellType : uint8;
enum class ESpellElement : uint8;
class ACPP_Spell;
// This class does not need to be modified.
UINTERFACE(MinimalAPI)
class UCPP_MagicSystemInterface : public UInterface
{
	GENERATED_BODY()
};

/**
 * 
 */
class PROJECT_SPELLCASTING_API ICPP_MagicSystemInterface
{
	GENERATED_BODY()

	// Add interface functions to this class. This is the class that will be inherited to implement this interface.
public:
	
	/// Adds a spell to the player
	/// @param Spell - The spell added to the player
	/// @return Indicates if the spell was added or not
	UFUNCTION(BlueprintCallable, BlueprintImplementableEvent, Category = "Spellcasting|Action")
	bool GainSpell(ACPP_Spell* Spell);
	
	/// Attempts to cast a spell of a specified type
	UFUNCTION(BlueprintCallable, BlueprintImplementableEvent, Category = "Spellcasting|Action")
	ACPP_Spell* UseSpell();

	/// Get the amount of charges a spell has
	/// @return The amount of charges a spell has
	UFUNCTION(BlueprintCallable, BlueprintImplementableEvent, Category = "Spellcasting|Utility")
	float GetCharges();

	/// Get the maximum amount of charges a spell has
	/// @return The maximum amount of charges a spell has
	UFUNCTION(BlueprintCallable, BlueprintImplementableEvent, Category = "Spellcasting|Utility")
	float GetMaximumCharges();

	UFUNCTION(BlueprintCallable, BlueprintImplementableEvent, Category = "Spellcasting|Utility")
	TSubclassOf<ACPP_Spell> GetSpellType();
};
