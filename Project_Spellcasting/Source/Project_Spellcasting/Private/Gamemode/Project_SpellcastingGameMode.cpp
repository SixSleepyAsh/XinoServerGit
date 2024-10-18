// Copyright Epic Games, Inc. All Rights Reserved.

#include "Gamemode/Project_SpellcastingGameMode.h"
#include "PlayerCharacter/Project_SpellcastingCharacter.h"
#include "UObject/ConstructorHelpers.h"

AProject_SpellcastingGameMode::AProject_SpellcastingGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
