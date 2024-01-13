import 'package:flutter/material.dart';
import 'package:movie_database/Core/colors.dart';
import 'package:movie_database/Presentation/Home_Floating/movie_floating.dart';
import 'package:movie_database/Presentation/Home_Floating/tv_floating.dart';

class Floatintoolbar extends StatelessWidget {
  const Floatintoolbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: kredColor),
      width: 220,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const TvFloating(),
              ));
            },
            child: const Text(
              'Tv Shows',
              style: TextStyle(color: kblackColor, fontSize: 11),
            ),
          ),
          const Text(
            '|',
            style: TextStyle(color: kDarkGreyColor),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MovieFloating(),
              ));
            },
            child: const Text(
              'Movies',
              style: TextStyle(color: kblackColor, fontSize: 11),
            ),
          ),
        ],
      ),
    );
  }
}
