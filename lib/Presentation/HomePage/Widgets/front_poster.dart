//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Application/Home/home_page_bloc.dart';
import 'package:movie_database/Core/colors.dart';

class FrontPostar extends StatelessWidget {
  final List<String> img;
  const FrontPostar({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomePageBloc>().add(const HomePageEvent.getImgs());
    });
    //final int randomIndex = Random().nextInt(img.length);
    return Stack(
      children: [
        Container(
          height: 550,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(img[0]),
            fit: BoxFit.fill,
          )),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 440,
            child: Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.8)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    '#1 Trending..',
                    style: TextStyle(
                        color: kwhiteColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
