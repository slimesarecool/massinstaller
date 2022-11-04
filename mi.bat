@echo off

if "%~1" == "" (
    echo [31m[Mass Installer]: Error! No files to install![0
    pause
    exit /b
)

for /f "tokens=1-2,*" %%A in ('findstr /C:"=" "%~1"') do (
    if "%%A" == "dir" (
        echo [33m[Mass Installer]: Setting directory to %%A.[0m
        cd %%C
        echo [92m[Mass Installer]: Successfully set directory to %%A.[0m
    ) else (
        if "%%A" == "clear" (
            cls
        ) else (
            if "%%A" == "say" (
                echo %%C
            ) else (
                echo [33m[Mass Installer]: Installing %%A.[0m
    
                for /f "usebackq skip=1 tokens=3" %%i in (`wmic os get caption ^| findstr /r /v "^$"`) do (
                    if %%i == 11 (
                        curl -o %%A %%C
                        cmd /c
                    )

                    if %%i == 10 (
                        curl -o %%A %%C
                        cmd /c
                    )

                    if %%i == 8 (
                        powershell -Command "Invoke-WebRequest %%C -Outfile %%A"
                    )

                    if %%i == 7 (
                        powershell -Command "Invoke-WebRequest %%C -Outfile %%A"
                    )
                )
        
                echo [92m[Mass Installer]: Successfully installed %%A.[0m

            if "%%~C" == ".zip" (
                echo [33m[Mass Installer]: Unzipping %%A.[0m
                powershell -Command "Expand-Archive %%A ./"
                echo [92m[Mass Installer]: Successfully unzipped %%A.[0m
                echo [33m[Mass Installer]: Deleting excess.[0m
                del %%A
                echo [92m[Mass Installer]: Successfully deleted excess.[0m
                echo [92m[Mass Installer]: Installation complete for %%A.[0m
                )
            )
        )
    )
)

pause