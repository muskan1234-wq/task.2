# Application Architecture

## Package Structure
```
com.codtech.weatherapp/
├── config/
│   └── AppConfig.java         # Configuration constants
├── model/
│   └── WeatherData.java       # Data model for API responses
├── service/
│   └── WeatherService.java    # API client service
└── WeatherApp.java            # Main application entry point
```

## Component Interaction Diagram
```
┌─────────────┐     HTTP Request     ┌─────────────────┐
│             │────────────────────▶ │                 │
│ WeatherApp  │                      │ OpenWeatherMap  │
│             │ ◀───────────────────│                 │
└─────────────┘     JSON Response    └─────────────────┘
       │
       │ uses
       ▼
┌─────────────┐       uses      ┌─────────────┐
│ WeatherService │─────────────▶ │ WeatherData │
└─────────────┘               └─────────────┘
       │
       │ configures
       ▼
┌─────────────┐
│  AppConfig  │
└─────────────┘
```

## Class Responsibilities

### WeatherApp
- Provides command-line user interface
- Handles user input and validates it
- Displays formatted weather data
- Creates and manages service instances

### WeatherService
- Creates and executes HTTP requests
- Handles error responses
- Parses JSON into model objects
- Manages resources like HTTP client

### WeatherData
- Represents the weather data model
- Maps JSON fields to Java properties
- Provides formatting for data display
- Contains nested classes for different parts of the API response

### AppConfig
- Stores configuration constants
- Defines API endpoints and keys
- Configures units for temperature display

## Data Flow

1. User enters city name or coordinates in WeatherApp
2. WeatherApp calls appropriate method in WeatherService
3. WeatherService creates URL with parameters from AppConfig
4. WeatherService executes HTTP GET request to OpenWeatherMap API
5. API responds with JSON data
6. WeatherService parses JSON into WeatherData object
7. WeatherApp displays formatted weather information to user 