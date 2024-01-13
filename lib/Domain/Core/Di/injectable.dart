import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_database/Domain/Core/Di/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInject() async {
  $initGetIt(getIt, environment: Environment.prod);
}
