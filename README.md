# whetherApp
# Flutter Weather Forecast App

Download APK From: https://drive.google.com/file/d/1LrO2S5HX4tAa8BQXniVljg-8w7sKSlW3/view?usp=sharing
A Flutter application that displays a 5-day weather forecast using a publicly available weather API.

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/flutter-weather-app.git
   cd flutter-weather-app
Instructions to install it in your local system, run the following commands
1: flutter pub get
2: flutter run
Configuration
To fetch weather data, you need an API key. You can obtain an API key from OpenWeatherMap.

Create an environment file (e.g., .env) in the project root and add your API key:

makefile
Copy code
OPENWEATHERMAP_API_KEY=your_api_key_here
API Integration
This project uses the OpenWeatherMap API to fetch weather data. The API key is required for authentication.

API Endpoint: https://api.openweathermap.org/data/2.5/weather
Example API Request: https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=your_api_key

Folder Structure
lib/: Contains the Dart code for the Flutter app.
assets/: Place your asset files here (e.g., images).
Screenshots
![ssWhetherApp](https://github.com/MashaheerJaffry/whetherApp/assets/83124766/95d22ec9-d9ff-4e38-bc41-98caf927ee6b)

Tests
To run unit tests, use the following command:

bash
flutter test

Contributing
Feel free to open issues or submit pull requests.

License
This project is licensed under the MIT License - see the LICENSE file for details.

Contact
For questions or support, contact mashaheerism@gmail.com.

Acknowledgments
Thanks to OpenWeatherMap for providing weather data.

