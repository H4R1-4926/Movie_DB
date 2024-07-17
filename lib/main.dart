import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Application/ComingSoon/coming_soon_bloc.dart';
import 'package:movie_database/Application/Floating/floating_items_bloc.dart';
import 'package:movie_database/Application/Home/home_page_bloc.dart';
import 'package:movie_database/Application/Splash/splash_bloc.dart';
import 'package:movie_database/Application/search/search_page_bloc.dart';
import 'package:movie_database/Domain/Core/Di/injectable.dart';

import 'Presentation/mainscreen.dart';

void main() async {
  await configureInject();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ComingSoonBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<SearchPageBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<HomePageBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<FloatingItemsBloc>(),
          ),
          BlocProvider(
            create: (context) => SplashBloc(),
          ),
        ],
        child: MaterialApp(
          home: Home(),
          theme: ThemeData(
            useMaterial3: false,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false,
        ));
  }
}
