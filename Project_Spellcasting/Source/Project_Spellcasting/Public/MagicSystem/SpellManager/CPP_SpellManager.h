#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "CPP_SpellManager.generated.h"

class UMagicSystemComponent;
class ACPP_Spell;

UCLASS()
class PROJECT_SPELLCASTING_API ACPP_SpellManager : public AActor
{
	GENERATED_BODY()

	bool bInitialized = false;
	
public:
	
	// Sets default values for this actor's properties
	ACPP_SpellManager();

	// Pool size for each spell type
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Pooling | Fire")
	int32 FireSpellPoolSize;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Pooling | Fire")
	int32 IceSpellPoolSize;
	
	// Spell class types for Fire and Ice
	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Pooling | Fire")
	TSubclassOf<ACPP_Spell> FireSpellClass;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Pooling | Ice")
	TSubclassOf<ACPP_Spell> IceSpellClass;

	// Arrays to store pooled spells
	UPROPERTY(VisibleAnywhere, BlueprintReadWrite, Category = "Pooling | Fire")
	TArray<ACPP_Spell*> FireSpellPool;

	UPROPERTY(VisibleAnywhere, BlueprintReadWrite, Category = "Pooling | Water")
	TArray<ACPP_Spell*> WaterSpellPool;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Pooling | Debug")
	bool bDebugPoolUsage = false;

	// Spawn or reuse a spell from the pool
	UFUNCTION(BlueprintCallable, Category = "Pooling")
	ACPP_Spell* GetSpellFromPool(TSubclassOf<ACPP_Spell> SpellClass);

	// Return spell to pool
	UFUNCTION(BlueprintCallable, Category = "Pooling")
	void ReturnSpellToPool(ACPP_Spell* Spell);

	// Get all the actors managed by the spell manager
	UFUNCTION(BlueprintCallable, Category = "Pooling")
	TArray<AActor*> GetManagedActors();

	UFUNCTION(BlueprintCallable, Category = "Pooling")
	TArray<AActor*> GetNonFullContainers( TArray<AActor*> ManagedActors);

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	// Initialize the spell pools
	void InitializeSpellPool(const TSubclassOf<ACPP_Spell>& SpellClass, int32 PoolSize, TArray<ACPP_Spell*>& Pool) const;

	void Setup();
};
