// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class Project_Spellcasting : ModuleRules
{
	public Project_Spellcasting(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[] {
			"Core", 
			"CoreUObject", 
			"Engine", 
			"InputCore", 
			"EnhancedInput",
			"UMG",        // Add UMG module
			"Slate",      // Add Slate module
			"SlateCore", // Add SlateCore module
			"Niagara", // Add Niagara module
			"AIModule", 
			"AkAudio" // Add AiModule module
		});
	}
}
