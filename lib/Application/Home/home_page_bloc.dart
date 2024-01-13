import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_database/Domain/HomePage/i_home_repo.dart';
import 'package:movie_database/Domain/HomePage/model/home_model.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final IHomeRepo iHomeRepo;
  HomePageBloc(this.iHomeRepo) : super(HomePageState.initial()) {
    on<GetImgs>((event, emit) async {
      if (state.newRelease.isNotEmpty ||
          state.trending.isNotEmpty ||
          state.topTen.isNotEmpty ||
          state.popTvs.isNotEmpty ||
          state.popMovies.isNotEmpty) {
        return emit(state);
      }
      emit(const HomePageState(
        isloading: true,
        onErr: false,
        newRelease: [],
        trending: [],
        topTen: [],
        popTvs: [],
        popMovies: [],
      ));
      //new release
      final resultNewRelease = await iHomeRepo.newRelease();
      final finalResultNewRelease = resultNewRelease.fold(
          (l) => const HomePageState(
                isloading: false,
                onErr: true,
                newRelease: [],
                trending: [],
                topTen: [],
                popTvs: [],
                popMovies: [],
              ),
          (r) => HomePageState(
                isloading: false,
                onErr: false,
                newRelease: r,
                trending: state.trending,
                topTen: state.topTen,
                popTvs: state.popTvs,
                popMovies: state.popMovies,
              ));
      emit(finalResultNewRelease);
//trending
      final resultNewTrending = await iHomeRepo.trending();
      final finalResultTrending = resultNewTrending.fold(
          (l) => const HomePageState(
                isloading: false,
                onErr: true,
                newRelease: [],
                trending: [],
                topTen: [],
                popTvs: [],
                popMovies: [],
              ),
          (r) => HomePageState(
                isloading: false,
                onErr: false,
                newRelease: state.newRelease,
                trending: r,
                topTen: state.topTen,
                popTvs: state.popTvs,
                popMovies: state.popMovies,
              ));
      emit(finalResultTrending);
//Top Ten
      final resultTopTen = await iHomeRepo.topTen();
      final finalResultTopTen = resultTopTen.fold(
          (l) => const HomePageState(
                isloading: false,
                onErr: true,
                newRelease: [],
                trending: [],
                topTen: [],
                popTvs: [],
                popMovies: [],
              ),
          (r) => HomePageState(
                isloading: false,
                onErr: false,
                newRelease: state.newRelease,
                trending: state.trending,
                topTen: r,
                popTvs: state.popTvs,
                popMovies: state.popMovies,
              ));
      emit(finalResultTopTen);
//Pop Tvs
      final resultPopTvs = await iHomeRepo.topTv();
      final finalResultPopTvs = resultPopTvs.fold(
          (l) => const HomePageState(
                isloading: false,
                onErr: true,
                newRelease: [],
                trending: [],
                topTen: [],
                popTvs: [],
                popMovies: [],
              ),
          (r) => HomePageState(
                isloading: false,
                onErr: false,
                newRelease: state.newRelease,
                trending: state.trending,
                topTen: state.topTen,
                popTvs: r,
                popMovies: state.popMovies,
              ));
      emit(finalResultPopTvs);
//pop Mov
      final resultPopMov = await iHomeRepo.kidsshow();
      final finalResltPopMov = resultPopMov.fold(
          (l) => const HomePageState(
                isloading: false,
                onErr: true,
                newRelease: [],
                trending: [],
                topTen: [],
                popTvs: [],
                popMovies: [],
              ),
          (r) => HomePageState(
                isloading: false,
                onErr: false,
                newRelease: state.newRelease,
                trending: state.trending,
                topTen: state.topTen,
                popTvs: state.popTvs,
                popMovies: r,
              ));
      emit(finalResltPopMov);
    });
  }
}
