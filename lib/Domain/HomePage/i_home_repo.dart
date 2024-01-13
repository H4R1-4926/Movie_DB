import 'package:dartz/dartz.dart';
import 'package:movie_database/Domain/Failure/main_failure.dart';
import 'package:movie_database/Domain/HomePage/model/home_model.dart';

abstract class IHomeRepo {
  Future<Either<MainFailure, List<HomePageData>>> newRelease();
  Future<Either<MainFailure, List<HomePageData>>> trending();
  Future<Either<MainFailure, List<HomePageData>>> topTen();
  Future<Either<MainFailure, List<HomePageData>>> topTv();
  Future<Either<MainFailure, List<HomePageData>>> kidsshow();
}
