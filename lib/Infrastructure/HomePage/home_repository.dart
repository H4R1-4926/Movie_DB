import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_database/Domain/Core/api_end_points.dart';
import 'package:movie_database/Domain/Failure/main_failure.dart';
import 'package:movie_database/Domain/HomePage/i_home_repo.dart';
import 'package:movie_database/Domain/HomePage/model/home_model.dart';

@LazySingleton(as: IHomeRepo)
class GetDetails implements IHomeRepo {
  @override
  Future<Either<MainFailure, List<HomePageData>>> kidsshow() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.trending);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responsedata = (response.data['results'] as List).map((e) {
          return HomePageData.fromJson(e);
        }).toList();

        return right(responsedata);
      } else {
        return left(const MainFailure.clientfailure());
      }
    } catch (e) {
      return left(const MainFailure.serverfailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HomePageData>>> newRelease() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.populartv);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responsedata = (response.data['results'] as List)
            .map((e) => HomePageData.fromJson(e))
            .toList();

        return right(responsedata);
      } else {
        return left(const MainFailure.clientfailure());
      }
    } catch (e) {
      return left(const MainFailure.serverfailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HomePageData>>> topTen() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.popularmovies);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responsedata = (response.data['results'] as List)
            .map((e) => HomePageData.fromJson(e))
            .toList();
        return right(responsedata);
      } else {
        return left(const MainFailure.clientfailure());
      }
    } catch (e) {
      return left(const MainFailure.serverfailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HomePageData>>> topTv() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.topmovies);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responsedata = (response.data['results'] as List)
            .map((e) => HomePageData.fromJson(e))
            .toList();
        return right(responsedata);
      } else {
        return left(const MainFailure.clientfailure());
      }
    } catch (e) {
      return left(const MainFailure.serverfailure());
    }
  }

  @override
  Future<Either<MainFailure, List<HomePageData>>> trending() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.toptv);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responsedata = (response.data['results'] as List)
            .map((e) => HomePageData.fromJson(e))
            .toList();
        return right(responsedata);
      } else {
        return left(const MainFailure.clientfailure());
      }
    } catch (e) {
      return left(const MainFailure.serverfailure());
    }
  }
}
