import 'package:duzify/data/search/models/show.dart';

class ShowsModel {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<ShowModel> items;

  const ShowsModel({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
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
