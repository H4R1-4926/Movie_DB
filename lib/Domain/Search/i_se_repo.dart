import 'package:dartz/dartz.dart';

import 'package:movie_database/Domain/Failure/main_failure.dart';
import 'package:movie_database/Domain/Search/model/search_model.dart';

abstract class ISearchDataRepo {
  Future<Either<MainFailure, List<SearchData>>> searchpage(
      {required String searchQuery});
  Future<Either<MainFailure, List<SearchData>>> topSearch();
}
