part of 'search_page_bloc.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const factory SearchPageState({
    required bool isloadng,
    required bool onErr,
    required List<SearchData> searchDet,
    required List<SearchData> idlepage,
  }) = _SearchPageState;
  factory SearchPageState.initial() {
    return const SearchPageState(
        isloadng: false, onErr: false, searchDet: [], idlepage: []);
  }
}
