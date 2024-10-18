

#include "MagicSystem/MagicContainer/CPP_MagicContainer.h"

// Sets default values
ACPP_MagicContainer::ACPP_MagicContainer()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;
}

// Called when the game starts or when spawned
void ACPP_MagicContainer::BeginPlay()
{
	Super::BeginPlay();
	
}

void ACPP_MagicContainer::MoveToContainer(AActor* Actor)
{
	
	// Variables to store the random location
	FVector NewLocation;
	bool bIsValidLocation = false;
	FVector ContainerLocation = GetActorLocation(); // The location of the Container
	int32 MaxAttempts = 10;  // Limit the number of attempts to avoid infinite loops

	
	for (int32 i = 0; i < MaxAttempts; ++i)
	{
		float RandomX = FMath::RandRange(-ContainerSpellSpawnRadius, ContainerSpellSpawnRadius);
		float RandomY = FMath::RandRange(-ContainerSpellSpawnRadius, ContainerSpellSpawnRadius);
		
		// Set a new location with random X, Y, and the fixed height above the container
		NewLocation = FVector(
			ContainerLocation.X + RandomX,
			ContainerLocation.Y + RandomY,
			ContainerLocation.Z + ContainerSpellSpawnHeight
		);

		// Perform an overlap test at the new location
		FCollisionQueryParams QueryParams;
		QueryParams.AddIgnoredActor(Actor);  // Ignore the actor being moved
		bool bOverlapping = GetWorld()->OverlapBlockingTestByChannel(
			NewLocation,
			FQuat::Identity,  // No rotation for the sweep
			ECC_WorldDynamic,  // Collision channel (adjust as needed)
			FCollisionShape::MakeSphere(50.0f),  // The shape to check for overlap, adjust size as needed
			QueryParams
		);

		// If no overlap, we found a valid location
		if (!bOverlapping)
		{
			bIsValidLocation = true;
			break;
		}
	}

    // If we found a valid location, move the actor
	Actor->SetActorLocation(bIsValidLocation ? NewLocation : ContainerLocation);
}

// Called every frame
void ACPP_MagicContainer::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

	if (bDebugDraw)
	{
		DrawDebugSphere(GetWorld(), GetActorLocation(), ContainerSpellSpawnRadius, 32, FColor::Green, false, 0.0f, 0, 1.0f);
	}

}

