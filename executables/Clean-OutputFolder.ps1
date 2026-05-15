# Clean-OutputFolder.ps1
# This script clears the organized output folders for Site-Specific Test Case Generator

# Get the script's directory
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path

# Navigate up one directory to get the project root
$projectRoot = Split-Path -Parent $scriptPath

Write-Host "=== SITE-SPECIFIC TEST CASE GENERATOR - OUTPUT CLEANUP ===" -ForegroundColor Green
Write-Host "Project Root: $projectRoot" -ForegroundColor Yellow

# Clean organized output subfolders
$outputFolderPath = Join-Path -Path $projectRoot -ChildPath "output"

if (Test-Path -Path $outputFolderPath) {
    Write-Host "`nCleaning organized output structure..." -ForegroundColor Cyan
    
    # Clean Sprint Test Cases subfolder
    $sprintFolderPath = Join-Path -Path $outputFolderPath -ChildPath "sprint_test_cases"
    if (Test-Path -Path $sprintFolderPath) {
        Write-Host "Cleaning Sprint Test Cases folder: $sprintFolderPath"
        try {
            $sprintFiles = Get-ChildItem -Path $sprintFolderPath -File
            if ($sprintFiles.Count -gt 0) {
                $sprintFiles | Remove-Item -Force
                Write-Host "Successfully deleted $($sprintFiles.Count) files from sprint_test_cases folder." -ForegroundColor Green
            } else {
                Write-Host "Sprint test cases folder is already empty."
            }
        } catch {
            Write-Error ("Error cleaning sprint test cases folder: {0}" -f $_)
        }
    }
    
    # Clean Regression Test Cases subfolder
    $regressionFolderPath = Join-Path -Path $outputFolderPath -ChildPath "regression_test_cases"
    if (Test-Path -Path $regressionFolderPath) {
        Write-Host "Cleaning Regression Test Cases folder: $regressionFolderPath"
        try {
            $regressionFiles = Get-ChildItem -Path $regressionFolderPath -File
            if ($regressionFiles.Count -gt 0) {
                $regressionFiles | Remove-Item -Force
                Write-Host "Successfully deleted $($regressionFiles.Count) files from regression_test_cases folder." -ForegroundColor Green
            } else {
                Write-Host "Regression test cases folder is already empty."
            }
        } catch {
            Write-Error ("Error cleaning regression test cases folder: {0}" -f $_)
        }
    }
    

    
    # Clean any remaining files in root output folder (excluding subfolders and structure guide)
    $rootOutputFiles = Get-ChildItem -Path $outputFolderPath -File | Where-Object { $_.Name -ne "OUTPUT_FOLDER_STRUCTURE_GUIDE.md" }
    if ($rootOutputFiles.Count -gt 0) {
        Write-Host "Cleaning remaining files in root output folder..."
        try {
            $rootOutputFiles | Remove-Item -Force
            Write-Host "Successfully deleted $($rootOutputFiles.Count) files from root output folder." -ForegroundColor Green
        } catch {
            Write-Error ("Error cleaning root output files: {0}" -f $_)
        }
    }
    
} else {
    Write-Host "Output folder not found at: $outputFolderPath" -ForegroundColor Red
}

# Clean Sprint Test Cases folder
$sprintFolderPath = Join-Path -Path $projectRoot -ChildPath "Sprint Test Cases"
if (Test-Path -Path $sprintFolderPath) {
    Write-Host "Cleaning Sprint Test Cases folder: $sprintFolderPath"
    try {
        $sprintFiles = Get-ChildItem -Path $sprintFolderPath -Recurse -File
        if ($sprintFiles.Count -gt 0) {
            $sprintFiles | Remove-Item -Force
            Write-Host "Successfully deleted all files from the Sprint Test Cases folder."
        } else {
            Write-Host "Sprint Test Cases folder is already empty."
        }
    } catch {
        Write-Error ("An error occurred while cleaning the Sprint Test Cases folder: {0}" -f $_)
    }
} else {
    Write-Host "Sprint Test Cases folder not found at: $sprintFolderPath"
}

Write-Host "Cleanup completed for Site-Specific Test Case Generator."
Write-Host "Note: Regression Test Suite folder is preserved to maintain existing regression tests."