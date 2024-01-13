import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_database/Domain/Core/api_end_points.dart';
import 'package:movie_database/Domain/Failure/main_failure.dart';
import 'package:movie_database/Domain/HomeFloating/i_float_repo.dart';
import 'package:movie_database/Domain/HomeFloating/model/float_model.dart';

@LazySingleton(as: IFloatItems)
class GetData implements IFloatItems {
  @override
  Future<Either<MainFailure, List<FloatData>>> getDatapage1() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.page1);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final details = (response.data['results'] as List).map((e) {
          return FloatData.fromJson(e);
        }).toList();

        return right(details);
      } else {
        return left(const MainFailure.clientfailure());
      }
    } catch (e) {
      return const Left(MainFailure.serverfailure());
    }
  }

  @override
  Future<Either<MainFailure, List<FloatData>>> getDatapage2() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.page2);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final details = (response.data['results'] as List).map((e) {
          return FloatData.fromJson(e);
        }).toList();

        return right(details);
      } else {
        return left(const MainFailure.clientfailure());
      }
    } catch (e) {
      return const Left(MainFailure.serverfailure());
    }
  }
}
