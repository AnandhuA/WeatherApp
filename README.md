# Weather App

A Flutter project for displaying real-time weather information.

## Features

- **Current Location Weather**: Automatically fetches weather information based on your current location using the Geolocator package.
- **Internationalization**: Supports multiple languages and regional settings with the Intl package.
- **State Management**: Utilizes the Bloc pattern for efficient and scalable state management.
- **Accurate Weather Data**: Provides detailed weather information using the Weather package.

- <img src="https://github.com/AnandhuA/WeatherApp/assets/72302650/efe39ddc-cd71-43fb-90ab-97fd9d8eed9f" alt="Screenshot_20240519-170943-portrait" width="200" height="400">


## Packages Used

- **geolocator: ^12.0.0**
  - Allows the app to access the device's location services to get the current location and fetch weather data for that location.

- **intl: ^0.19.0**
  - Used for internationalization, making the app accessible in multiple languages and formats.

- **weather: ^3.1.1**
  - A comprehensive package for fetching weather data from various weather APIs.

- **flutter_bloc: ^8.1.5**
  - Simplifies the implementation of the Bloc pattern, providing a robust solution for state management in Flutter applications.

- **bloc: ^8.1.4**
  - The core package for implementing the Bloc pattern, allowing for separation of business logic and UI.

- **equatable: ^2.0.5**
  - Helps in comparing objects in the Bloc pattern, improving performance and ensuring reliable state comparisons.

## Resources

- [Flutter Documentation](https://flutter.dev/docs): Official documentation for Flutter, including guides, tutorials, and API references.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## Acknowledgments

Special thanks to the creators of the packages used in this project:
- [geolocator](https://pub.dev/packages/geolocator)
- [weather](https://pub.dev/packages/weather)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [bloc](https://pub.dev/packages/bloc)
- [equatable](https://pub.dev/packages/equatable)



### Requirements

- Flutter SDK
- Dart

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/AnandhuA/WeatherApp.git
   cd WeatherApp

2. Install dependencies:
   ```bash
   flutter pub get
3. Run the app:
   ```bash
   flutter run
