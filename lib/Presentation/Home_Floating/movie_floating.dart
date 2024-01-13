// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_database/Application/Floating/floating_items_bloc.dart';
import 'package:movie_database/Core/api.dart';
import 'package:movie_database/Core/colors.dart';
import 'package:movie_database/Core/img.dart';

class MovieFloating extends StatelessWidget {
  const MovieFloating({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FloatingItemsBloc>().add(const FloatingItemsEvent.initial());
    });
    return Scaffold(
        backgroundColor: kblackColor,
        appBar: AppBar(
          foregroundColor: kblackColor,
          title: const Text(
            'Movies',
            style: TextStyle(fontSize: 25, color: kblackColor),
          ),
          centerTitle: true,
          backgroundColor: kredColor,
        ),
        body: BlocBuilder<FloatingItemsBloc, FloatingItemsState>(
          builder: (context, state) {
            if (state.isLoading) {
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
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 10,
              ),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 13,
                crossAxisSpacing: 13,
                childAspectRatio: 1 / 1.4,
                children: List.generate(state.getData.length, (index) {
                  final postar = state.getData[index].postarPath;

                  return Container(
                    height: 180,
                    width: 120,
                    decoration: BoxDecoration(
                        image: kverticalimg != null
                            ? DecorationImage(
                                image: NetworkImage('$kimgAppendUrl$postar'),
                                fit: BoxFit.cover)
                            : const DecorationImage(
                                image: NetworkImage(
                                  knoimage,
                                ),
                                fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(15)),
                  );
                }),
              ),
            );
          },
        ));
  }
}
