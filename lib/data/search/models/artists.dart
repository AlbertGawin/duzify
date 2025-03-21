import 'package:duzify/data/search/models/artist.dart';
import 'package:duzify/domain/search/entities/artists.dart';

class ArtistsModel extends ArtistsEntity {
  const ArtistsModel({
    required super.href,
    required super.limit,
    required super.next,
    required super.offset,
    required super.previous,
    required super.total,
    required super.items,
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
