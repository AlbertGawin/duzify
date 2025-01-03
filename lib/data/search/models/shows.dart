import 'package:duzify/data/search/models/show.dart';
import 'package:duzify/domain/search/entities/shows.dart';

class ShowsModel extends ShowsEntity {
  const ShowsModel({
    required super.href,
    required super.limit,
    required super.next,
    required super.offset,
    required super.previous,
    required super.total,
    required super.items,
  });

  factory ShowsModel.fromJson(Map<String, dynamic> json) {
    return ShowsModel(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items:
          List<ShowModel>.from(json['items'].map((x) => ShowModel.fromJson(x))),
    );
  }
}
