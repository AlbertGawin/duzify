import 'package:duzify/data/splash/repositories/splash_repository_impl.dart';
import 'package:duzify/data/splash/sources/splash_remote_source.dart';
import 'package:duzify/domain/splash/repositories/splash_repository.dart';
import 'package:duzify/domain/splash/usecases/get_access_token.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<SplashRepository>(SplashRepositoryImpl());

  sl.registerSingleton<SplashRemoteSource>(SplashRemoteSourceImpl());

  sl.registerSingleton<GetAccessTokenUseCase>(GetAccessTokenUseCase());
}
