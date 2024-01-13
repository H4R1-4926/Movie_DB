part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required bool isloading,
    required bool onErr,
    required List<HomePageData> newRelease,
    required List<HomePageData> trending,
    required List<HomePageData> topTen,
    required List<HomePageData> popTvs,
    required List<HomePageData> popMovies,
  }) = _HomePageState;

  factory HomePageState.initial() {
    return const HomePageState(
        isloading: false,
        onErr: false,
        newRelease: [],
        trending: [],
        topTen: [],
        popTvs: [],
        popMovies: []);
  }
}
