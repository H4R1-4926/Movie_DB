import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_database/Application/ComingSoon/coming_soon_bloc.dart';
import 'package:movie_database/Core/api.dart';
import 'package:movie_database/Core/colors.dart';

import 'package:movie_database/Presentation/Widgets/icon_text.dart';
import 'package:share_plus/share_plus.dart';

class TvSeriesComingSoon extends StatelessWidget {
  const TvSeriesComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComingSoonBloc, ComingSoonState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: kredColor,
            ),
          );
        } else if (state.onError) {
          return const Center(
              child: Icon(
            Icons.wifi,
            color: kwhiteColor,
          ));
        } else if (state.getDetils.isEmpty) {
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
            itemBuilder: (context, index) {
              final tv = state.getTvDetails[index];
              final gen = getValueAtIndex(tv.genre, 0);

              final g = getGenreName(gen);
              final gen1 = getValueAtIndex(tv.genre, 1);

              final g1 = getGenreName(gen1);
              final gen2 = getValueAtIndex(tv.genre, 2);

              final g2 = getGenreName(gen2);
              return Container(
                color: kblackColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 230,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  '$kimgAppendUrl${tv.bacdropPath}'))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 300,
                                child: Text(
                                  tv.name ?? tv.title ?? 'NO Title Provided',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      fontSize: 30,
                                      color: kwhiteColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Share.share(
                                          '$kimgAppendUrl${tv.postarPath}');
                                    },
                                    child: const IconText(
                                      ic: Icons.share,
                                      text: 'Share',
                                      size: 30,
                                      style: TextStyle(color: kwhiteColor),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            tv.overview ?? 'no overview',
                            style: const TextStyle(
                              color: kLightGreyColor,
                              letterSpacing: 2,
                              fontSize: 12,
                              overflow: TextOverflow.ellipsis,
                            ),
                            textAlign: TextAlign.justify,
                            maxLines: 5,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '$g     $g1    $g2',
                              style: GoogleFonts.poppins(
                                  color: kwhiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(
                  height: 10,
                ),
            itemCount: state.getTvDetails.length);
      },
    );
  }
}
