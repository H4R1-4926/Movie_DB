import 'package:flutter/material.dart';
import 'package:movie_database/Core/colors.dart';
import 'package:share_plus/share_plus.dart';

class DetailsPage extends StatelessWidget {
  final String backimg;
  final String postar;
  final String title;
  final String overview;
  final String date;
  final String type;
  final String genre;
  const DetailsPage(
      {super.key,
      required this.backimg,
      required this.postar,
      required this.title,
      required this.overview,
      required this.date,
      required this.type,
      required this.genre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackColor,
      body: SafeArea(
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 230,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(backimg), fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        Share.share(postar);
                      },
                      child: const Icon(Icons.share,
                          color: kwhiteColor, size: 25)),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 250,
                          child: Text(
                            title,
                            style: const TextStyle(
                                color: kwhiteColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          type.toUpperCase(),
                          style: const TextStyle(
                            color: kwhiteColor,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                            color: kwhiteColor,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 180,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: NetworkImage(postar), fit: BoxFit.fill)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                genre,
                style: const TextStyle(color: kLightGreyColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  overview,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(color: kLightGreyColor, fontSize: 18),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
