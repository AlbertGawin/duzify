import 'package:duzify/domain/search/entities/search.dart';
import 'package:duzify/presentation/Search/bloc/cubit/Search_state.dart';
import 'package:duzify/presentation/search/bloc/cubit/search_cubit.dart';
import 'package:duzify/presentation/search/widgets/category_button.dart';
import 'package:duzify/presentation/search/widgets/intro_text.dart';
import 'package:duzify/presentation/search/widgets/search_app_bar.dart';
import 'package:duzify/presentation/search/widgets/track_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: SearchAppBar(),
        body: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            if (state is SearchSuccess) {
              final SearchEntity result = state.result;

              return Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        final titles = [
                          'Utwory',
                          'Wykonawcy',
                          'Albumy',
                          'Playlisty',
                          'Podcasty'
                        ];
                        return Padding(
                          padding: EdgeInsets.only(
                            left: index == 0 ? 12.0 : 4.0,
                            right: index == titles.length - 1 ? 12.0 : 4.0,
                            top: 8.0,
                            bottom: 8.0,
                          ),
                          child: CategoryButton(title: titles[index]),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      itemCount: result.tracks.items.length > 16
                          ? 16
                          : result.tracks.items.length,
                      itemBuilder: (context, index) {
                        final track = result.tracks.items[index];

                        return TrackTile(track: track);
                      },
                    ),
                  ),
                ],
              );
            } else if (state is SearchLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SearchFailure) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return const IntroText();
            }
          },
        ),
      ),
    );
  }
}
