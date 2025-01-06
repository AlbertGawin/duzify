import 'package:duzify/data/search/models/albums.dart';
import 'package:duzify/data/search/models/artists.dart';
import 'package:duzify/data/search/models/audiobooks.dart';
import 'package:duzify/data/search/models/episodes.dart';
import 'package:duzify/data/search/models/playlists.dart';
import 'package:duzify/data/search/models/shows.dart';
import 'package:duzify/data/search/models/tracks.dart';
import 'package:duzify/domain/search/entities/search.dart';

class SearchModel extends SearchEntity {
  const SearchModel({
    required super.tracks,
    required super.artists,
    required super.albums,
    required super.playlists,
    required super.shows,
    required super.episodes,
    required super.audiobooks,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return SearchModel(
      tracks:
          json['tracks'] != null ? TracksModel.fromJson(json['tracks']) : null,
      artists: json['artists'] != null
          ? ArtistsModel.fromJson(json['artists'])
          : null,
      albums:
          json['albums'] != null ? AlbumsModel.fromJson(json['albums']) : null,
      playlists: json['playlists'] != null
          ? PlaylistsModel.fromJson(json['playlists'])
          : null,
      shows: json['shows'] != null ? ShowsModel.fromJson(json['shows']) : null,
      episodes: json['episodes'] != null
          ? EpisodesModel.fromJson(json['episodes'])
          : null,
      audiobooks: json['audiobooks'] != null
          ? AudiobooksModel.fromJson(json['audiobooks'])
          : null,
    );
  }
}
