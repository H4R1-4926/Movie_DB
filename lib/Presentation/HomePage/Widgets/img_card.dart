import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Core/api.dart';
import 'package:movie_database/Domain/HomePage/model/home_model.dart';
import 'package:movie_database/Presentation/Details/details.dart';

import '../../../Application/Home/home_page_bloc.dart';

class ImgCard extends StatelessWidget {
  final int index;
  final List<HomePageData> det;
  const ImgCard({
    super.key,
    required this.det,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
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

        final details = det[index];
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
                backimg: '$kimgAppendUrl${details.bacdropPath}',
                postar: '$kimgAppendUrl${details.postarPath}',
                title: details.title ?? details.name ?? '___',
                overview: details.overview ?? '___',
                date: details.data ?? details.tvDate ?? '___',
                type: details.mediaType ?? '___',
                genre: '$g   $g2   $g3',
              ),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage('$kimgAppendUrl${details.postarPath}'),
                    fit: BoxFit.cover)),
          ),
        );
      },
    );
  }
}
