import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Application/search/search_page_bloc.dart';

import 'package:movie_database/Core/colors.dart';
import 'package:movie_database/Domain/Debounce/debounce.dart';
import 'package:movie_database/Presentation/Search/search_ide.dart';
import 'package:movie_database/Presentation/Search/search_result.dart';

class Search extends StatelessWidget {
  Search({super.key});

  final _deboucer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: CupertinoSearchTextField(
              prefixIcon: const Icon(
                Icons.search_outlined,
                color: kLightGreyColor,
                size: 28,
              ),
              style: const TextStyle(color: kwhiteColor),
              suffixIcon: const Icon(
                Icons.close,
                size: 25,
                color: kgreyColor,
              ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: kDarkGreyColor),
              onChanged: (value) {
                if (value.isEmpty) {
                  const SearchIdlePage();
                }
                _deboucer.run(() {
                  context
                      .read<SearchPageBloc>()
                      .add(Searchresult(movieQuery: value));
                });
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(child: BlocBuilder<SearchPageBloc, SearchPageState>(
            builder: (context, state) {
              if (state.searchDet.isEmpty) {
                return const SearchIdlePage();
              } else {
                return const SearchResult();
              }
            },
          )),
        ],
      )),
    );
  }
}
