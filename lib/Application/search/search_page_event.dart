part of 'search_page_bloc.dart';

@freezed
class SearchPageEvent with _$SearchPageEvent {
  const factory SearchPageEvent.topSearch() = TopSearch;
  const factory SearchPageEvent.searchresult({required String movieQuery}) =
      Searchresult;
}
