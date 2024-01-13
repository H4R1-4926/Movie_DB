import 'package:flutter/material.dart';

import 'package:movie_database/Domain/HomePage/model/home_model.dart';

import 'package:movie_database/Presentation/HomePage/Widgets/img_card.dart';
import 'package:movie_database/Presentation/HomePage/Widgets/text_card.dart';

class MainCard extends StatelessWidget {
  final String title;
  final List<String> img;
  final List<HomePageData> details;

  const MainCard({
    super.key,
    required this.title,
    required this.img,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CardText(
            text: title,
          ),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(img.length, (index) {
              return ImgCard(
                det: details,
                index: index,
              );
            }),
          ),
        )
      ],
    );
  }
}
