// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Application/search/search_page_bloc.dart';
import 'package:movie_database/Core/api.dart';
import 'package:movie_database/Core/img.dart';
import 'package:movie_database/Presentation/Details/details.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: BlocBuilder<SearchPageBloc, SearchPageState>(
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

          return GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 13,
            crossAxisSpacing: 13,
            childAspectRatio: 1 / 1.4,
            children: List.generate(state.searchDet.length, (index) {
              final _searchdata = state.searchDet[index];
              final gen = getValueAtIndex(_searchdata.genre, 0);

              final g = getGenreName(gen);
              final gen2 = getValueAtIndex(_searchdata.genre, 1);

              final g2 = getGenreName(gen2);
              final gen3 = getValueAtIndex(_searchdata.genre, 2);

              final g3 = getGenreName(gen3);
              final String img = '$kimgAppendUrl${_searchdata.posterPath}';
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      backimg: '$kimgAppendUrl${_searchdata.bacdropPath}',
                      postar: '$kimgAppendUrl${_searchdata.posterPath}',
                      title: _searchdata.title ?? _searchdata.name ?? 'no Name',
                      overview: _searchdata.overview ?? 'Not Given',
                      date:
                          _searchdata.data ?? _searchdata.tvDate ?? 'Not Given',
                      type: _searchdata.mediaType ?? 'Not Given',
                      genre: '$g   $g2   $g3',
                    ),
                  ));
                },
                child: Container(
                  height: 180,
                  width: 120,
                  decoration: BoxDecoration(
                      image: _searchdata.posterPath != null
                          ? DecorationImage(
                              image: NetworkImage(img), fit: BoxFit.cover)
                          : const DecorationImage(
                              image: NetworkImage(
                                knoimage,
                              ),
                              fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15)),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
