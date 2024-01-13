import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_database/Application/search/search_page_bloc.dart';
import 'package:movie_database/Core/api.dart';
import 'package:movie_database/Core/colors.dart';
import 'package:movie_database/Presentation/Details/details.dart';
import 'package:movie_database/Presentation/Search/Widgets/search_item_tile.dart';

class SearchIdlePage extends StatelessWidget {
  const SearchIdlePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SearchPageBloc>().add(const TopSearch());
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Top Searches',
              style: GoogleFonts.roboto(
                  color: kwhiteColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: BlocBuilder<SearchPageBloc, SearchPageState>(
            builder: (context, state) {
              if (state.isloadng) {
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
              } else if (state.idlepage.isEmpty) {
                return const Center(
                    child: Text(
                  'Nothing To Show Here',
                  style: TextStyle(color: kwhiteColor),
                ));
              }
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

              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final details = state.idlepage[index];
                    final gen = getValueAtIndex(details.genre, 0);

                    final g = getGenreName(gen);
                    final gen2 = getValueAtIndex(details.genre, 1);

                    final g2 = getGenreName(gen2);
                    final gen3 = getValueAtIndex(details.genre, 2);

                    final g3 = getGenreName(gen3);
                    return Container(
                      height: 100,
                      color: kDarkGreyColor,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              backimg: '$kimgAppendUrl${details.bacdropPath}',
                              postar: '$kimgAppendUrl${details.posterPath}',
                              title: details.title ?? details.name ?? 'no Name',
                              overview: details.overview ?? 'Not Given',
                              date:
                                  details.data ?? details.tvDate ?? 'Not Given',
                              type: details.mediaType ?? 'Not Given',
                              genre: '$g   $g2   $g3',
                            ),
                          ));
                        },
                        child: SearchTileItems(
                          index: index,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(
                        height: 6,
                      ),
                  itemCount: state.idlepage.length);
            },
          ),
        )
      ],
    );
  }
}
