part of 'coming_soon_bloc.dart';

@freezed
class ComingSoonState with _$ComingSoonState {
  const factory ComingSoonState({
    required bool isLoading,
    required bool onError,
    required List<ComingSoonData> getDetils,
    required List<ComingSoonData> getTvDetails,
  }) = _ComingOonState;

  factory ComingSoonState.initial() {
    return const ComingSoonState(
        isLoading: false, onError: false, getDetils: [], getTvDetails: []);
  }
}
