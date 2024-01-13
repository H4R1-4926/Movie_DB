import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Application/ComingSoon/coming_soon_bloc.dart';

import 'package:movie_database/Core/colors.dart';

import 'package:movie_database/Presentation/Coming%20Soon/WIdgets/movies.dart';
import 'package:movie_database/Presentation/Coming%20Soon/WIdgets/tvseries.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ComingSoonBloc>().add(const GetDetails());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ComingSoonBloc>().add(const GetTvDetails());
    });
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: kblackColor,
            appBar: TabBar(
              labelStyle: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1),
              unselectedLabelStyle:
                  const TextStyle(fontSize: 10, letterSpacing: 1),
              labelColor: kblackColor,
              unselectedLabelColor: kwhiteColor,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: RadialGradient(
                      radius: 2,
                      colors: [Colors.red.shade400, Colors.red.shade800])),
              tabs: const [
                Tab(
                  text: 'Movies',
                ),
                Tab(
                  text: 'Tv Series',
                )
              ],
            ),
            body: const TabBarView(
              children: [MoviesComing(), TvSeriesComingSoon()],
            )),
      ),
    );
  }
}
