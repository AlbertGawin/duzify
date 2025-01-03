import 'package:dartz/dartz.dart';
import 'package:duzify/data/search/models/search_req.dart';

abstract class SearchRepository {
  Future<Either> search(SearchReq searchReq);
}
