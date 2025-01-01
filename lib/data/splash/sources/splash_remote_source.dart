import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class SplashRemoteSource {
  Future<Either> get accessToken;
}

class SplashRemoteSourceImpl implements SplashRemoteSource {
  @override
  Future<Either> get accessToken async {
    try {
      var url = Uri.https("accounts.spotify.com", "api/token", {
        "grant_type": "client_credentials",
        "client_id": "fd1ae7830c7341f4b74fcf945938997a",
        "client_secret": "07523d99889041389eeedde351acac49",
      });

      var response = await http.post(url, headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      });

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        var accessToken = jsonResponse['access_token'];

        return Right(accessToken);
      } else {
        return Left(Exception('Failed to get access token'));
      }
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
