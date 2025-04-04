@echo off
echo Building Weather REST API Client...

rem Create bin directory if it doesn't exist
mkdir bin 2>nul

rem Compile all Java files
echo Compiling Java files...
javac -cp "lib/*" -d bin src/main/java/com/codtech/weatherapp/config/*.java src/main/java/com/codtech/weatherapp/model/*.java src/main/java/com/codtech/weatherapp/service/*.java src/main/java/com/codtech/weatherapp/*.java

if %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    exit /b 1
)

echo Compilation successful!
echo.
echo Running Weather REST API Client...
echo.

rem Run the application
java -cp "bin;lib/*" com.codtech.weatherapp.WeatherApp 