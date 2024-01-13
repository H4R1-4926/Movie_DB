import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_database/Domain/HomeFloating/i_float_repo.dart';
import 'package:movie_database/Domain/HomeFloating/model/float_model.dart';

part 'floating_items_event.dart';
part 'floating_items_state.dart';
part 'floating_items_bloc.freezed.dart';

@injectable
class FloatingItemsBloc extends Bloc<FloatingItemsEvent, FloatingItemsState> {
  final IFloatItems _floatItems;
  FloatingItemsBloc(this._floatItems) : super(FloatingItemsState.initial()) {
    on<Initial>((event, emit) async {
      if (state.getData.isNotEmpty) {
        return emit(state);
      }
      emit(const FloatingItemsState(
          isLoading: true, onErr: false, getData: [], getTvData: []));
      final result = await _floatItems.getDatapage1();

      final afterResult = result.fold(
          (l) => const FloatingItemsState(
              isLoading: false, onErr: true, getData: [], getTvData: []),
          (r) => FloatingItemsState(
                isLoading: false,
                onErr: false,
                getData: r,
                getTvData: state.getTvData,
              ));

      emit(afterResult);
    });
    on<Initial2>((event, emit) async {
      if (state.getTvData.isNotEmpty) {
        return emit(state);
      }
      emit(const FloatingItemsState(
          isLoading: true, onErr: false, getData: [], getTvData: []));

      final result2 = await _floatItems.getDatapage2();

      final afterResult2 = result2.fold(
          (l) => const FloatingItemsState(
              isLoading: false, onErr: true, getData: [], getTvData: []),
          (r) => FloatingItemsState(
              isLoading: false,
              onErr: false,
              getData: state.getData,
              getTvData: r));

      emit(afterResult2);
    });
  }
}
