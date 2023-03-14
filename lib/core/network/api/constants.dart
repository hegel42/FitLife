class Endpoints {
  Endpoints._();

  static const String baseUrl = 'https://api.nasa.gov/';

  static const Duration receiveTimeout = Duration(seconds: 3);

  static const Duration connectionTimeout = Duration(seconds: 3);
}
