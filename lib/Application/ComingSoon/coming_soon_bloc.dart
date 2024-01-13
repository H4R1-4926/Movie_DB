// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_database/Domain/ComingSoon/i_comingsoon_repo.dart';
import 'package:movie_database/Domain/ComingSoon/model/comingsoon_model.dart';

part 'coming_soon_event.dart';
part 'coming_soon_state.dart';
part 'coming_soon_bloc.freezed.dart';

@injectable
class ComingSoonBloc extends Bloc<ComingSoonEvent, ComingSoonState> {
  final IComingSoonRepo iComingSoonRepo;
  ComingSoonBloc(this.iComingSoonRepo) : super(ComingSoonState.initial()) {
    on<GetDetails>((event, emit) async {
      if (state.getDetils.isNotEmpty) {
        return emit(state);
      }
//getting data
      emit(const ComingSoonState(
          isLoading: true, onError: false, getDetils: [], getTvDetails: []));
//what is doing
      final _result1 = await iComingSoonRepo.getmoviedetails();

      final _state = _result1.fold(
          (fail) => const ComingSoonState(
              isLoading: false, onError: true, getDetils: [], getTvDetails: []),
          (success) => ComingSoonState(
              isLoading: false,
              onError: false,
              getDetils: success,
              getTvDetails: state.getTvDetails));

//to ui
      emit(_state);
    });
    on<GetTvDetails>((event, emit) async {
      if (state.getTvDetails.isNotEmpty) {
        return emit(state);
      }
      emit(const ComingSoonState(
          isLoading: true, onError: false, getDetils: [], getTvDetails: []));
      final _result2 = await iComingSoonRepo.gettvdetails();

      final _statetv = _result2.fold(
          (l) => const ComingSoonState(
              isLoading: false, onError: true, getDetils: [], getTvDetails: []),
          (su) => ComingSoonState(
              isLoading: false,
              onError: false,
              getDetils: state.getDetils,
              getTvDetails: su));
      emit(_statetv);
    });
  }
}
