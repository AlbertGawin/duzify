import 'package:http/http.dart' as http;

abstract class SplashRemoteSource {
  Future<String> get getToken;
}

class SplashRemoteSourceImpl implements SplashRemoteSource {
  @override
  Future<String> get getToken async {
    var url = Uri.https("https://accounts.spotify.com", "api/token", {
      "grant_type": "client_credentials",
      "client_id": String.fromEnvironment("CLIENT_ID"),
      "client_secret": String.fromEnvironment("CLIENT_SECRET"),
    });

    var response = await http.post(url);

    print(response.body);

    return "test";
  }
}
