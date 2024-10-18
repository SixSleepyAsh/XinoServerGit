// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "CharacterVitals/CPP_CharacterVitalsInter.h"
#include "GameFramework/Actor.h"
#include "CPP_Spell.generated.h"

class ACPP_SpellManager;
class UProjectileMovementComponent;
// The different types of elements a spell could be
UENUM(BlueprintType)
enum class ESpellElement : uint8
{
	SpellElement_None = 0 UMETA(DisplayName = "None"),
	SpellElement_Fire	   UMETA(DisplayName = "Fire"),
	SpellElement_Air	   UMETA(DisplayName = "Air"),
	SpellElement_Water	   UMETA(DisplayName = "Water"),
	SpellElement_Earth	   UMETA(DisplayName = "Earth"),
};

// The physical type of a spell
UENUM()
enum class ESpellRange : uint8
{
	SpellType_None = 0 UMETA(DisplayName = "None"),
	SpellType_Ranged   UMETA(DisplayName = "Ranged"),
	SpellType_Melee	   UMETA(DisplayName = "Melee")
};


UCLASS()
class PROJECT_SPELLCASTING_API ACPP_Spell : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ACPP_Spell();

	// All the stats related to damage for the spell
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Spell | Damage")
	FDamageInfo DamageInfo;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Spell | Type")
	ESpellElement SpellElement;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Spell | Type")
	ESpellRange SpellRange;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Spell | Target")
	AActor* SpellTarget;

	UPROPERTY(EditDefaultsOnly , BlueprintReadWrite, Category = "Spell")
	ACPP_SpellManager* SpellPool;


	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Spell | Stats")
	float SpellCharges;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Spell | Stats")
	float SpellSpeed;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Spell | Stats")
	float SpellGravity;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Spell | Type")
	bool IsHoming;

	// Add in your header
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Spell")
	UProjectileMovementComponent* ProjectileMovementComponent;

	UFUNCTION(BlueprintCallable, Category = "Spell | Action")
	void ResetProperties();
	
protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;
};
