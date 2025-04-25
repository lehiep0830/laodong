abstract class BaseApiService {
  final String baseURL = "https://itunes.apple.com/search?term=";

  Future<dynamic> getResponse(String url);

  Future<dynamic> postResponse(dynamic data, String url);
}
