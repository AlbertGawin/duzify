import 'package:dartz/dartz.dart';
import 'package:duzify/data/search/models/search_req.dart';
import 'package:duzify/data/search/sources/search_remote_source.dart';
import 'package:duzify/domain/search/repositories/search_repository.dart';
import 'package:duzify/service_locator.dart';

class SearchRepositoryImpl implements SearchRepository {
  @override
  Future<Either> search(SearchReq searchReq) async {
    return await sl<SearchRemoteSource>().search(searchReq);
  }
}
