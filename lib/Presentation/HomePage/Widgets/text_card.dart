import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_database/Core/colors.dart';

class CardText extends StatelessWidget {
  final String text;
  const CardText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: kwhiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 27,
      ),
    );
  }
}
