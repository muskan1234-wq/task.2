# Weather REST API Client - User Guide

## Overview
This application allows you to fetch real-time weather data from OpenWeatherMap API and display it in a structured format. You can search for weather information by city name or geographical coordinates.

## Setting Up the Application

### Step 1: Get an API Key
1. Visit [OpenWeatherMap](https://openweathermap.org/api) and create a free account
2. After registration, go to your account page and copy your API key
3. Open `src/main/java/com/codtech/weatherapp/config/AppConfig.java`
4. Replace `YOUR_API_KEY` with the API key you copied

### Step 2: Download Dependencies
1. Run `download_dependencies.bat` to download all required libraries
2. This will create a `lib` folder containing all necessary JAR files

### Step 3: Compile and Run
1. Run `build_and_run.bat` to compile and start the application
2. The application should launch with a simple menu interface

## Using the Application

### Main Menu
The application presents a simple menu with three options:
```
Weather App - REST API Client
=============================

Menu:
1. Get weather by city name
2. Get weather by coordinates
3. Exit
```

### Option 1: Get Weather by City Name
1. Enter `1` and press Enter
2. Type the name of any city (e.g., "London", "New York", "Tokyo")
3. Press Enter to fetch the weather data

Example:
```
Enter city name: London

=== Weather Information ===
Weather in London (GB):
Description: broken clouds
Temperature: 18.5°C
Feels like: 17.9°C
Min/Max: 16.8°C / 20.1°C
Humidity: 64%
Pressure: 1012 hPa
Wind: 5.14 m/s, direction: 230°
Cloudiness: 75%
Visibility: 10000 meters
===========================
```

### Option 2: Get Weather by Coordinates
1. Enter `2` and press Enter
2. Enter the latitude (e.g., 51.5074 for London)
3. Enter the longitude (e.g., -0.1278 for London)
4. Press Enter to fetch the weather data

Example:
```
Enter latitude: 51.5074
Enter longitude: -0.1278

=== Weather Information ===
Weather in London (GB):
Description: broken clouds
Temperature: 18.5°C
Feels like: 17.9°C
Min/Max: 16.8°C / 20.1°C
Humidity: 64%
Pressure: 1012 hPa
Wind: 5.14 m/s, direction: 230°
Cloudiness: 75%
Visibility: 10000 meters
===========================
```

### Option 3: Exit
1. Enter `3` and press Enter to close the application

## Troubleshooting

### Invalid API Key
If you see an error like `Error fetching weather data: Error parsing API response`, it's likely because:
- You haven't replaced the placeholder API key with your actual key
- Your API key is incorrect or has expired
- You've reached the API call limit for free accounts

### City Not Found
If you enter a city name that cannot be found, you'll receive an error message. Try:
- Checking for spelling mistakes
- Using a more specific city name (e.g., "London, UK" instead of just "London")

### Network Issues
If you're having trouble connecting to the API:
- Check your internet connection
- Verify that your firewall isn't blocking the application

## Additional Information

### Temperature Units
By default, the application displays temperatures in Celsius. If you prefer Fahrenheit:
1. Open `src/main/java/com/codtech/weatherapp/config/AppConfig.java`
2. Change `UNITS = "metric"` to `UNITS = "imperial"`
3. Recompile the application using `build_and_run.bat`

### API Response Details
The application displays the following information:
- City name and country code
- Weather description
- Current temperature and "feels like" temperature
- Minimum and maximum temperatures
- Humidity percentage
- Atmospheric pressure
- Wind speed and direction
- Cloud coverage percentage
- Visibility distance 