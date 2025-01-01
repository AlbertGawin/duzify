import 'package:dartz/dartz.dart';
import 'package:duzify/data/splash/sources/splash_remote_source.dart';
import 'package:duzify/domain/splash/repositories/splash_repository.dart';
import 'package:duzify/service_locator.dart';

class SplashRepositoryImpl implements SplashRepository {
  @override
  Future<Either> get accessToken async {
    return await sl<SplashRemoteSource>().accessToken;
  }
}
