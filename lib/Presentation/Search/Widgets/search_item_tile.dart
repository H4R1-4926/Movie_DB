import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Application/search/search_page_bloc.dart';
import 'package:movie_database/Core/api.dart';
import 'package:movie_database/Core/colors.dart';

class SearchTileItems extends StatelessWidget {
  final int index;
  const SearchTileItems({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchPageBloc, SearchPageState>(
      builder: (context, state) {
        final details = state.idlepage[index];
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: double.infinity,
              width: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage('$kimgAppendUrl${details.bacdropPath}'),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                details.name ?? details.title ?? 'No Name',
                maxLines: 2,
                style: const TextStyle(
                  color: kwhiteColor,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
