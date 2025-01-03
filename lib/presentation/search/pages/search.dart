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
              final result = state.result;

              return const SizedBox();
            } else {
              return const IntroText();
            }
          },
        ),
      ),
    );
  }
}
