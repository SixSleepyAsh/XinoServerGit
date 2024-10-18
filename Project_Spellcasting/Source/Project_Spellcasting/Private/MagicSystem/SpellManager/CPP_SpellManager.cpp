// Fill out your copyright notice in the Description page of Project Settings.


#include "MagicSystem/SpellManager/CPP_SpellManager.h"

#include "EngineUtils.h"
#include "Kismet/GameplayStatics.h"
#include "MagicSystem/CPP_MagicSystemInterface.h"
#include "MagicSystem/MagicSystemComponent.h"
#include "MagicSystem/Spell/CPP_Spell.h"

// Sets default values
ACPP_SpellManager::ACPP_SpellManager()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

}


ACPP_Spell* ACPP_SpellManager::GetSpellFromPool(TSubclassOf<ACPP_Spell> SpellClass)
{
    TArray<ACPP_Spell*>* SelectedPool = nullptr;

    /// Check if the pool is empty
    if (FireSpellPool.Num() == 0 )
    {
        UE_LOG(LogTemp, Warning, TEXT("SpellManager: Spell pool is empty!"));
        return nullptr;
    }

    // Select the appropriate pool based on the SpellClass
    if (SpellClass == FireSpellClass)
    {
        SelectedPool = &FireSpellPool;
    }

    if (!bInitialized)
        Setup();
    
    ACPP_Spell* SelectedSpell = SelectedPool->Pop(); // Remove and return the spell from the pool
    
    if (bDebugPoolUsage)
    {
        UE_LOG(LogTemp, Warning, TEXT("SpellManager: Spell retrieved from pool. Remaining spells in pool: %d"), SelectedPool->Num());
    }
    
    return SelectedSpell;
}

void ACPP_SpellManager::ReturnSpellToPool(ACPP_Spell* Spell)
{
    if (!Spell)
    {
        UE_LOG(LogTemp, Warning, TEXT("SpellManager: Spell is null!"));
        return;
    }

    // Determine which pool to return the spell to
    if (Spell->IsA(FireSpellClass))
    {
        FireSpellPool.Add(Spell);
    }
    else if (Spell->IsA(IceSpellClass))
    {
        WaterSpellPool.Add(Spell);
    }

    if (bDebugPoolUsage)
    {
        UE_LOG(LogTemp, Warning, TEXT("SpellManager: Spell returned to pool."));
    }
}

TArray<AActor*> ACPP_SpellManager::GetManagedActors()
{
    // Array to store all actors managed by the spell manager
    TArray<AActor*> ManagedActors;

    // Get the player character 
    const AActor* PlayerActor = GetWorld()->GetFirstPlayerController()->GetPawn();

    // Loop through all actors in the world
    for (TActorIterator<AActor> It(GetWorld()); It; ++It)
    {
        AActor* Actor = *It;

        // Check if the actor has a UMagicSystemComponent and is not the player
        if ( Actor != PlayerActor &&
             Actor->FindComponentByClass<UMagicSystemComponent>() )
        {
            ManagedActors.Add(Actor); // Add the actor to the array
        }
    }

    return ManagedActors; // Return the array of actors
}

TArray<AActor*> ACPP_SpellManager::GetNonFullContainers(TArray<AActor*> ManagedActors)
{
    TArray<AActor*> NonFullContainers;
    
    for (AActor* Actor : ManagedActors)
    {
        const FString Name = Actor->GetName();
        
        // Check if the actor implements the interface
        if (!Actor->GetClass()->ImplementsInterface(UCPP_MagicSystemInterface::StaticClass()))
        {
            UE_LOG(LogTemp, Warning, TEXT("SpellManager: Actor %s does not implement UCPP_MagicSystemInterface!"), *Name);
            continue;
        }

        // Check if the container is not full (charges < max charges)
        if (ICPP_MagicSystemInterface::Execute_GetCharges(Actor) < ICPP_MagicSystemInterface::Execute_GetMaximumCharges(Actor))
        {
            NonFullContainers.Add(Actor);
        }
    }

    return NonFullContainers;
}



// Called when the game starts or when spawned
void ACPP_SpellManager::BeginPlay()
{
    Super::BeginPlay();

    Setup();
}

void ACPP_SpellManager::InitializeSpellPool(const TSubclassOf<ACPP_Spell>& SpellClass, const int32 PoolSize, TArray<ACPP_Spell*>& Pool) const
{
    for (int32 i = 0; i < PoolSize; i++)
    {
        ACPP_Spell* NewSpell = GetWorld()->SpawnActor<ACPP_Spell>(SpellClass);
        if (NewSpell)
        {
            NewSpell->SetActorHiddenInGame(true); // Hide the spell initially
            Pool.Add(NewSpell);

#if WITH_EDITOR
            // Cast to an actor and call SetFolderPath to organize the spells in the World Outliner
            // Set the folder path for organization in the World Outliner
            Cast<AActor>(NewSpell)->SetFolderPath(FName("Spell Pool /" + SpellClass->GetName()));
#endif
        }
    }

    if (bDebugPoolUsage)
    {
        UE_LOG(LogTemp, Warning, TEXT("SpellManager: Initialized spell pool with %d spells."), PoolSize);
    }
}


void ACPP_SpellManager::Setup()
{
    if (bInitialized)
    {
        return;
    }

    bInitialized = true;
    
    InitializeSpellPool(FireSpellClass, FireSpellPoolSize, FireSpellPool);
    InitializeSpellPool(IceSpellClass, IceSpellPoolSize, WaterSpellPool); // Assuming Water is Ice here
}


