import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:duzify/common/helpers/auth_manager.dart';
import 'package:duzify/core/configs/constants/app_urls.dart';
import 'package:duzify/data/search/models/search.dart';
import 'package:duzify/data/search/models/search_req.dart';
import 'package:http/http.dart' as http;

abstract class SearchRemoteSource {
  Future<Either> search(SearchReq searchReq);
}

class SearchRemoteSourceImpl implements SearchRemoteSource {
  @override
  Future<Either> search(SearchReq searchReq) async {
    try {
      var url = Uri.https(AppURLs.basicApi, AppURLs.search, searchReq.toJson());

      var response = await http.get(url, headers: {
        "Authorization": "Bearer ${AuthManager().accessToken}",
      });

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        SearchModel searchModel = SearchModel.fromJson(jsonResponse);

        return Right(searchModel);
      } else {
        return Left(Exception('Failed to search'));
      }
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
