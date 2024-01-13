import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Application/Home/home_page_bloc.dart';
import 'package:movie_database/Core/api.dart';
import 'package:movie_database/Core/colors.dart';
import 'package:movie_database/Presentation/Details/details.dart';

import 'package:movie_database/Presentation/HomePage/Widgets/text_card.dart';
import 'package:stroke_text/stroke_text.dart';

class CardNumberd extends StatelessWidget {
  final List<String> img;
  const CardNumberd({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: CardText(text: 'Top 10 Tv Shows'),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return Stack(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          height: 150,
                          width: 50,
                        ),
                        BlocBuilder<HomePageBloc, HomePageState>(
                          builder: (context, state) {
                            int getValueAtIndex(List<int> list, int index) {
                              // Check if the list contains a value at the specified index
                              if (index >= 0 && index < list.length) {
                                // If there is a value, return it
                                return list[index];
                              } else {
                                // If there is no value, return a custom message
                                return 6;
                              }
                            }

                            final details = state.trending[index];
                            final gen = getValueAtIndex(details.genre, 0);

                            final g = getGenreName(gen);
                            final gen2 = getValueAtIndex(details.genre, 1);

                            final g2 = getGenreName(gen2);
                            final gen3 = getValueAtIndex(details.genre, 2);

                            final g3 = getGenreName(gen3);
                            return GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                    backimg:
                                        '$kimgAppendUrl${details.bacdropPath}',
                                    postar:
                                        '$kimgAppendUrl${details.postarPath}',
                                    title:
                                        details.title ?? details.name ?? 'TV',
                                    overview: details.overview ?? 'TV',
                                    date:
                                        details.data ?? details.tvDate ?? 'TV',
                                    type: details.mediaType ?? 'TV',
                                    genre: '$g   $g2   $g3',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 130,
                                // height: 220,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(img[index]),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Positioned(
                      left: -6,
                      bottom: -29,
                      child: StrokeText(
                        text: '${index + 1}',
                        strokeColor: kLightGreyColor,
                        textColor: kblackColor,
                        strokeWidth: 3,
                        textStyle: const TextStyle(
                            fontSize: 130, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                );
              })),
        ),
      ],
    );
  }
}
