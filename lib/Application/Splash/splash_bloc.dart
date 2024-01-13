import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<_Started>((event, emit) async {
      emit(const SplashState(loading: true, loaded: false));
      await Future.delayed(const Duration(seconds: 3));
      emit(const SplashState(loading: false, loaded: true));
    });
  }
}
