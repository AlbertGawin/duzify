import 'package:duzify/domain/search/entities/search_req.dart';

class SearchReq extends SearchReqEntity {
  const SearchReq({
    required super.q,
    super.type = const [
      "album",
      "artist",
      "playlist",
      "track",
      "show",
      "episode",
      "audiobook"
    ],
    super.market,
    super.limit,
    super.offset,
    super.includeExternal,
  });

  factory SearchReq.fromJson(Map<String, dynamic> json) {
    return SearchReq(
      q: json['q'],
      type: List<String>.from(json['type'].map((x) => x)),
      market: json['market'],
      limit: json['limit'],
      offset: json['offset'],
      includeExternal: json['include_external'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'q': q,
      'type': type.join(','),
    };

    if (market != null) data['market'] = market;
    if (limit != null) data['limit'] = limit.toString();
    if (offset != null) data['offset'] = offset;
    if (includeExternal != null) data['include_external'] = includeExternal;

    return data;
  }
}
