import 'package:dartz/dartz.dart';
import 'package:duzify/core/usecase/usecase.dart';
import 'package:duzify/domain/splash/repositories/splash_repository.dart';
import 'package:duzify/service_locator.dart';

class GetAccessTokenUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SplashRepository>().accessToken;
  }
}
