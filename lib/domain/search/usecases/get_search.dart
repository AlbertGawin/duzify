import 'package:dartz/dartz.dart';
import 'package:duzify/core/usecase/usecase.dart';
import 'package:duzify/data/search/models/search_req.dart';
import 'package:duzify/domain/search/repositories/search_repository.dart';
import 'package:duzify/service_locator.dart';

class SearchUseCase implements UseCase<Either, SearchReq> {
  @override
  Future<Either> call({SearchReq? params}) async {
    return await sl<SearchRepository>().search(params!);
  }
}
