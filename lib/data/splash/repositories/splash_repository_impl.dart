import 'package:duzify/data/splash/sources/splash_remote_source.dart';
import 'package:duzify/domain/splash/repositories/splash_repository.dart';

class SplashRepositoryImpl implements SplashRepository {
  final SplashRemoteSource remoteSource;

  const SplashRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<String> get getToken => remoteSource.getToken;
}
