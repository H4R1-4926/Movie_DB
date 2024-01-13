part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({required bool loading, required bool loaded}) =
      _SplashState;
  factory SplashState.initial() {
    return const SplashState(loading: false, loaded: false);
  }
}
