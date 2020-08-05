import 'location.dart';
import 'network.dart';
import 'secret/secret.dart';
import 'secret/secret_loader.dart';

const baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherService {
  Future<dynamic> getLocationWeather() async {
    LocationService location = LocationService();
    var secret = await SecretLoader(secretPath: 'assets/secrets.json').load();

    await location.getCurrentLocation();

    NetworkService networkService = NetworkService(
        '$baseUrl?lat=${location.latitude}&long=${location.longitude}&appid=${secret.apiKey}');
  }
}
