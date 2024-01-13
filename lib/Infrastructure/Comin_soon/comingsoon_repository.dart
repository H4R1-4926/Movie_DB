import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_database/Domain/ComingSoon/i_comingsoon_repo.dart';
import 'package:movie_database/Domain/ComingSoon/model/comingsoon_model.dart';

import 'package:movie_database/Domain/Core/api_end_points.dart';
import 'package:movie_database/Domain/Failure/main_failure.dart';

@LazySingleton(as: IComingSoonRepo)
class GetDetails implements IComingSoonRepo {
  @override
  Future<Either<MainFailure, List<ComingSoonData>>> getmoviedetails() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.upcomingmovie);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final movieData = (response.data['results'] as List).map((e) {
          return ComingSoonData.fromJson(e);
        }).toList();

        return right(movieData);
      } else {
        return left(const MainFailure.clientfailure());
      }
    } catch (e) {
      return const Left(MainFailure.serverfailure());
    }
  }

  @override
  Future<Either<MainFailure, List<ComingSoonData>>> gettvdetails() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.uptvshows);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final tvData = (response.data['results'] as List).map((e) {
          return ComingSoonData.fromJson(e);
        }).toList();
        return right(tvData);
      } else {
        return left(const MainFailure.clientfailure());
      }
    } catch (e) {
      return const Left(MainFailure.serverfailure());
    }
  }
}
