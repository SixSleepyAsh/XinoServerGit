// Fill out your copyright notice in the Description page of Project Settings.


#include "WriteToCSV/CPP_WriteToCSV.h"


void UCPP_WriteToCSV::WriteToCSV(const FString FileName, const FString DataToWrite, const bool bAppend, const FString Separator, const FString FileType)
{
    // Construct the file path
    const FString FilePath = FPaths::ConvertRelativePathToFull(FPaths::ProjectContentDir()) + (FileName + FileType);

    // If appending data
    if(bAppend)
    {
        // Append the data 
        FFileHelper::SaveStringToFile(DataToWrite + Separator, *FilePath, FFileHelper::EEncodingOptions::AutoDetect,
            &IFileManager::Get(), EFileWrite::FILEWRITE_Append);
    }
    else
    {
        // Overwrite existing file
        FFileHelper::SaveStringToFile(DataToWrite + Separator, *FilePath, FFileHelper::EEncodingOptions::AutoDetect,
            &IFileManager::Get());
    }
}

