# Weather REST API Client

A Java application that consumes a public REST API (OpenWeatherMap) to fetch weather data and displays it in a structured format.

## Features

- Fetch weather data by city name
- Fetch weather data by geographical coordinates
- Display weather information in a structured format
- Parse JSON responses from the API

## Prerequisites

- Java 11 or higher
- An API key from OpenWeatherMap (https://openweathermap.org/api)

## Dependencies

This project requires the following libraries:
- Jackson (for JSON parsing)
- Apache HttpClient (for HTTP requests)

You need to download these libraries and place them in the `lib` directory:
1. jackson-databind-2.14.2.jar
2. jackson-core-2.14.2.jar
3. jackson-annotations-2.14.2.jar
4. httpclient5-5.2.1.jar
5. httpcore5-5.2.1.jar
6. httpcore5-h2-5.2.1.jar
7. slf4j-api-1.7.36.jar

## Setup

1. Clone this repository
2. Obtain an API key from OpenWeatherMap (https://openweathermap.org/api)
3. Edit `src/main/java/com/codtech/weatherapp/config/AppConfig.java` and replace `YOUR_API_KEY` with your actual API key
4. Download the required libraries and place them in the `lib` directory

## Compilation

```bash
javac -cp "lib/*" -d bin src/main/java/com/codtech/weatherapp/model/*.java src/main/java/com/codtech/weatherapp/config/*.java src/main/java/com/codtech/weatherapp/service/*.java src/main/java/com/codtech/weatherapp/*.java
```

## Running the Application

```bash
java -cp "bin;lib/*" com.codtech.weatherapp.WeatherApp
```

## Usage

The application provides a simple command-line interface for fetching and displaying weather data:

1. Get weather by city name: Enter the name of the city
2. Get weather by coordinates: Enter the latitude and longitude
3. Exit: Close the application

## Sample Output

```
Weather App - REST API Client
=============================

Menu:
1. Get weather by city name
2. Get weather by coordinates
3. Exit

Enter your choice (1-3): 1
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