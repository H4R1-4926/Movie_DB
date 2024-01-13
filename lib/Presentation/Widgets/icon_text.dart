import 'package:flutter/material.dart';
import 'package:movie_database/Core/colors.dart';

class IconText extends StatelessWidget {
  final IconData ic;
  final double size;
  final TextStyle style;
  final String text;
  const IconText(
      {super.key,
      required this.ic,
      required this.text,
      required this.size,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          ic,
          color: kwhiteColor,
          size: size,
        ),
        Text(
          text,
          style: style,
        )
      ],
    );
  }
}
