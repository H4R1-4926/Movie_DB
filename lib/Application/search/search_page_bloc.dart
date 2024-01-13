// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:movie_database/Domain/Search/i_se_repo.dart';
import 'package:movie_database/Domain/Search/model/search_model.dart';

part 'search_page_event.dart';
part 'search_page_state.dart';
part 'search_page_bloc.freezed.dart';

@injectable
class SearchPageBloc extends Bloc<SearchPageEvent, SearchPageState> {
  final ISearchDataRepo _iSearchDataRepo;

  SearchPageBloc(this._iSearchDataRepo) : super(SearchPageState.initial()) {
    on<TopSearch>((event, emit) async {
      if (state.idlepage.isNotEmpty) {
        return emit(state);
      }
      emit(const SearchPageState(
          isloadng: true, onErr: false, searchDet: [], idlepage: []));
      final _result = await _iSearchDataRepo.topSearch();
      final _state = _result.fold(
          (l) => const SearchPageState(
              isloadng: false, onErr: true, searchDet: [], idlepage: []),
          (suc) => SearchPageState(
              isloadng: false, onErr: false, searchDet: [], idlepage: suc));
      emit(_state);
    });
    on<Searchresult>((event, emit) async {
      emit(const SearchPageState(
          isloadng: true, onErr: false, searchDet: [], idlepage: []));
      final _result =
          await _iSearchDataRepo.searchpage(searchQuery: event.movieQuery);
      final _state = _result.fold(
          (l) => const SearchPageState(
              isloadng: false, onErr: true, searchDet: [], idlepage: []),
          (r) => SearchPageState(
              isloadng: false, onErr: false, searchDet: r, idlepage: []));
      emit(_state);
    });
  }
}
