@echo off
goto checkperms
:checkperms
    title Windows Activator
    echo Detecting permissions...
    echo:
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo [101;93mChoose your windows key[0m
        echo Home: TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
        echo Home N: 3KHY7-WNT83-DGQKR-F7HPR-844BM
        echo Home Single Language: 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
        echo Home Country Specific: PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
        echo Professional: W269N-WFGWX-YVC9B-4J6C9-T83GX
        echo Professional N: MH37W-N47XK-V7XM9-C7227-GCQG9	
        echo Education: NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
        echo Education N: 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
        echo Enterprise: NPPR9-FWDCX-D2C8J-H872K-2YT43
        echo Enterprise N: DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
        echo:
        set /p key="Paste your key >>> "
        @echo "This is your key >>> %key%"
        slmgr /ipk %key%
        slmgr /skms s8.uk.to
        slmgr /ato
    ) else (
        echo [31mFailure: Run as administrator.[0m
    )

    pause >nul