if "%ARCH%" == "32" (set PLATFORM=x86) else (set PLATFORM=x64)
if "%ARCH%" == "32" (set MACRO=MS_WIN32) else (set PLATFORM=MS_WIN64)
"%PYTHON%" setup.py install -D "%MACRO"--single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
