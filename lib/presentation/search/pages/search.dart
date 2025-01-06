import 'package:duzify/common/widgets/error/error_message.dart';
import 'package:duzify/domain/search/entities/search.dart';
import 'package:duzify/presentation/Search/bloc/cubit/Search_state.dart';
import 'package:duzify/presentation/search/bloc/cubit/search_cubit.dart';
import 'package:duzify/presentation/search/widgets/category_list.dart';
import 'package:duzify/presentation/search/widgets/intro_text.dart';
import 'package:duzify/presentation/search/widgets/search_app_bar.dart';
import 'package:duzify/presentation/search/widgets/tracks_list.dart';
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
                  SizedBox(height: 50, child: CategoryList()),
                  if (result.tracks != null)
                    Expanded(child: TracksList(tracks: result.tracks!)),
                ],
              );
            } else if (state is SearchLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SearchError) {
              return ErrorMessage(title: "Search Failure", text: state.message);
            } else {
              return const IntroText();
            }
          },
        ),
      ),
    );
  }
}
