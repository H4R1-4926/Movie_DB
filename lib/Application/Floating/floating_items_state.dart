part of 'floating_items_bloc.dart';

@freezed
class FloatingItemsState with _$FloatingItemsState {
  const factory FloatingItemsState({
    required bool isLoading,
    required bool onErr,
    required List<FloatData> getData,
    required List<FloatData> getTvData,
  }) = _FloatingItemsState;

  factory FloatingItemsState.initial() {
    return const FloatingItemsState(
        isLoading: false, onErr: false, getData: [], getTvData: []);
  }
}
