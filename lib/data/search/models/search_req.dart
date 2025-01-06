import 'package:duzify/domain/search/entities/search_req.dart';

class SearchReq extends SearchReqEntity {
  const SearchReq({
    required super.q,
    required super.type,
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
    final Map<String, dynamic> data = {'q': q};

    if (type != null) data['type'] = type;
    if (market != null) data['market'] = market;
    if (limit != null) data['limit'] = limit.toString();
    if (offset != null) data['offset'] = offset;
    if (includeExternal != null) data['include_external'] = includeExternal;

    return data;
  }
}
