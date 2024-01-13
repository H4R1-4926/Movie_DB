import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Application/Splash/splash_bloc.dart';
import 'package:movie_database/Presentation/HomePage/home_page.dart';
import 'package:movie_database/Presentation/Coming%20Soon/coming_soon.dart';

import 'package:movie_database/Presentation/Search/search.dart';
import 'package:movie_database/Presentation/Widgets/splash.dart';

import '../Core/colors.dart';

ValueNotifier pagechangenotifier = ValueNotifier(0);

class Home extends StatelessWidget {
  final _pages = [
    const HomePage(),
    Search(),
    const ComingSoon(),
  ];
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SplashBloc>().add(const SplashEvent.started());
    });
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        if (state.loading) {
          return const SplashScreen();
        }
        return Scaffold(
          backgroundColor: kblackColor,
          body: ValueListenableBuilder(
            valueListenable: pagechangenotifier,
            builder: (context, value, _) {
              return _pages[value];
            },
          ),
          bottomNavigationBar: const BottomNavigation(),
        );
      },
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: pagechangenotifier,
      builder: (context, newindex, _) {
        return BottomNavigationBar(
            currentIndex: newindex,
            onTap: (index) {
              pagechangenotifier.value = index;
            },
            type: BottomNavigationBarType.shifting,
            unselectedItemColor: Colors.grey,
            selectedItemColor: kwhiteColor,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                backgroundColor: Colors.black,
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                backgroundColor: Colors.black,
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_library_outlined,
                  size: 30,
                ),
                label: 'New',
                backgroundColor: Colors.black,
              ),
            ]);
      },
    );
  }
}
