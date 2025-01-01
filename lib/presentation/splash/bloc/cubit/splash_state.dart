abstract class SplashState {}

final class SplashInitial extends SplashState {}

final class SplashLoading extends SplashState {}

final class SplashSuccess extends SplashState {}

final class SplashFailure extends SplashState {
  final String message;

  SplashFailure({required this.message});
}
