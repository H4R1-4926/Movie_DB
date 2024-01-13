import 'package:dartz/dartz.dart';
import 'package:movie_database/Domain/ComingSoon/model/comingsoon_model.dart';
import 'package:movie_database/Domain/Failure/main_failure.dart';

abstract class IComingSoonRepo {
  Future<Either<MainFailure, List<ComingSoonData>>> getmoviedetails();
  Future<Either<MainFailure, List<ComingSoonData>>> gettvdetails();
}
