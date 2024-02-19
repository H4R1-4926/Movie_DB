//import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
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
        CarouselSlider(
            items: img
                .map((e) => Center(
                      child: Image(
                        image: NetworkImage(e),
                        fit: BoxFit.cover,
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
                height: 550,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3))),
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
                    'Trendings..',
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
