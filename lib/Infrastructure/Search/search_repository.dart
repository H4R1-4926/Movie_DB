// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_database/Domain/Core/api_end_points.dart';
import 'package:movie_database/Domain/Failure/main_failure.dart';
import 'package:movie_database/Domain/Search/i_se_repo.dart';

import 'package:movie_database/Domain/Search/model/search_model.dart';

@LazySingleton(as: ISearchDataRepo)
class SearchDetails implements ISearchDataRepo {
  @override
  Future<Either<MainFailure, List<SearchData>>> searchpage(
      {required String searchQuery}) async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.searchitems,
          queryParameters: {'query': searchQuery});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchData = (response.data['results'] as List).map((e) {
          return SearchData.fromJson(e);
        }).toList();

        return right(searchData);
      } else {
        return left(const MainFailure.clientfailure());
      }
    } catch (e) {
      return const Left(MainFailure.serverfailure());
    }
  }

  @override
  Future<Either<MainFailure, List<SearchData>>> topSearch() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.trending);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final details = (response.data['results'] as List).map((e) {
          return SearchData.fromJson(e);
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
