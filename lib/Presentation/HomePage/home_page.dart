import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Application/Home/home_page_bloc.dart';
import 'package:movie_database/Core/api.dart';

import 'package:movie_database/Core/colors.dart';

import 'package:movie_database/Presentation/HomePage/Widgets/floating_bar.dart';

import 'package:movie_database/Presentation/HomePage/Widgets/front_poster.dart';

import 'package:movie_database/Presentation/HomePage/Widgets/main_card.dart';
import 'package:movie_database/Presentation/HomePage/Widgets/number_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomePageBloc>().add(const HomePageEvent.getImgs());
    });
    return Scaffold(
      backgroundColor: kblackColor,
      body: Stack(
        children: [
          BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              if (state.isloading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: kredColor,
                  ),
                );
              } else if (state.onErr) {
                return const Center(
                    child: Icon(
                  Icons.wifi,
                  color: kwhiteColor,
                ));
              } else if (state.newRelease.isEmpty ||
                  state.topTen.isEmpty ||
                  state.trending.isEmpty ||
                  state.popTvs.isEmpty ||
                  state.popMovies.isEmpty) {
                return const Center(
                    child: Text(
                  'Nothing To Show Here',
                  style: TextStyle(color: kwhiteColor),
                ));
              }

              final release = state.newRelease.map((m) {
                return '$kimgAppendUrl${m.postarPath}';
              }).toList();
              final trend = state.trending.map((m) {
                return '$kimgAppendUrl${m.postarPath}';
              }).toList();
              final topTen = state.topTen.map((m) {
                return '$kimgAppendUrl${m.postarPath}';
              }).toList();
              final popMov = state.popMovies.map((m) {
                return '$kimgAppendUrl${m.postarPath}';
              }).toList();
              final popTvs = state.popTvs.map((m) {
                return '$kimgAppendUrl${m.postarPath}';
              }).toList();
              return CustomScrollView(slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  forceMaterialTransparency: true,
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/logp.jpg'),
                  ),
                  expandedHeight: 511,
                  flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                      stretchModes: const [StretchMode.blurBackground],
                      background: FrontPostar(
                        img: popMov,
                      )),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final topmovies = state.popTvs;
                    final releasenew = state.newRelease;
                    final pop = state.popMovies;
                    final top10 = state.topTen;
                    return Column(
                      children: [
                        MainCard(
                          title: 'Top Movies',
                          img: popTvs.sublist(0, 10),
                          details: topmovies,
                        ),
                        MainCard(
                          title: 'Popular Tv Shows',
                          img: release.sublist(0, 10),
                          details: releasenew,
                        ),
                        CardNumberd(
                          img: trend,
                        ),
                        MainCard(
                          title: 'Trending',
                          img: popMov.sublist(0, 10),
                          details: pop,
                        ),
                        MainCard(
                          title: 'Top Horror',
                          img: topTen.sublist(0, 10),
                          details: top10,
                        ),
                      ],
                    );
                  }, childCount: 1),
                ),
              ]);
            },
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Floatintoolbar()],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
