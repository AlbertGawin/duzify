import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:duzify/domain/search/entities/search.dart';
import 'package:duzify/presentation/Search/bloc/cubit/Search_state.dart';
import 'package:duzify/presentation/search/bloc/cubit/search_cubit.dart';
import 'package:duzify/presentation/search/widgets/intro_text.dart';
import 'package:duzify/presentation/search/widgets/search_app_bar.dart';
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

              return ListView.builder(
                itemCount: result.tracks.items.length > 20
                    ? 20
                    : result.tracks.items.length,
                itemBuilder: (context, index) {
                  final track = result.tracks.items[index];

                  return ListTile(
                    contentPadding: const EdgeInsets.only(left: 16, right: 0),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.network(
                        track.album.images.first.url,
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      track.name,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: AppColors.white,
                            letterSpacing: 0,
                            fontSize: 15,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      '${track.type == "track" ? "Utwór" : "Inne"} • ${track.artists.map((artist) => artist.name).join(', ')}',
                      style: TextStyle(
                        color: AppColors.lightGray,
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: AppColors.lightGray,
                            size: 24,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: AppColors.lightGray,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  );
                },
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
