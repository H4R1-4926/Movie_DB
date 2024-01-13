import 'package:dartz/dartz.dart';
import 'package:movie_database/Domain/Failure/main_failure.dart';
import 'package:movie_database/Domain/HomeFloating/model/float_model.dart';

abstract class IFloatItems {
  Future<Either<MainFailure, List<FloatData>>> getDatapage1();
  Future<Either<MainFailure, List<FloatData>>> getDatapage2();
}
