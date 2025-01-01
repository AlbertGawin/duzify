import 'package:duzify/domain/splash/usecases/get_access_token.dart';
import 'package:duzify/presentation/splash/bloc/cubit/splash_state.dart';
import 'package:duzify/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  Future<void> getAccessToken() async {
    var accessToken = await sl<GetAccessTokenUseCase>().call();

    accessToken.fold(
      (failure) => emit(SplashFailure(message: failure.message)),
      (token) => emit(SplashSuccess()),
    );
  }
}
