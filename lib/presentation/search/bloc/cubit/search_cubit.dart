import 'package:duzify/data/search/models/search_req.dart';
import 'package:duzify/domain/search/usecases/search.dart';
import 'package:duzify/presentation/Search/bloc/cubit/Search_state.dart';
import 'package:duzify/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:async/async.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  CancelableOperation? _searchOperation;

  Future<void> search(SearchReq params) async {
    _searchOperation?.cancel();

    if (params.q.isEmpty) {
      emit(SearchInitial());
      return;
    }

    emit(SearchLoading());

    _searchOperation = CancelableOperation.fromFuture(
      sl<SearchUseCase>().call(params: params),
      onCancel: () => emit(SearchInitial()),
    );

    try {
      var search = await _searchOperation!.value;

      search.fold(
        (failure) => emit(SearchFailure(message: failure.message)),
        (result) => emit(SearchSuccess(result: result)),
      );
    } catch (e) {
      emit(SearchFailure(message: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _searchOperation?.cancel();
    return super.close();
  }
}
