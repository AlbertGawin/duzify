import 'package:duzify/data/search/models/search_req.dart';
import 'package:duzify/domain/search/usecases/get_search.dart';
import 'package:duzify/presentation/Search/bloc/cubit/Search_state.dart';
import 'package:duzify/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  Future<void> search(SearchReq params) async {
    var search = await sl<SearchUseCase>().call(params: params);

    search.fold(
      (failure) => emit(SearchFailure(message: failure.message)),
      (result) => emit(SearchSuccess()),
    );
  }
}
