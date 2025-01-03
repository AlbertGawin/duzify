import 'package:duzify/data/search/models/artist.dart';

class ArtistsModel {
  final String href;
  final int limit;
  final String? next;
  final int offset;
  final String? previous;
  final int total;
  final List<ArtistModel> items;

  const ArtistsModel({
    required this.href,
    required this.limit,
    required this.next,
    required this.offset,
    required this.previous,
    required this.total,
    required this.items,
  });

  factory ArtistsModel.fromJson(Map<String, dynamic> json) {
    return ArtistsModel(
      href: json['href'],
      limit: json['limit'],
      next: json['next'],
      offset: json['offset'],
      previous: json['previous'],
      total: json['total'],
      items: List<ArtistModel>.from(
          json['items'].map((x) => ArtistModel.fromJson(x))),
    );
  }
}
