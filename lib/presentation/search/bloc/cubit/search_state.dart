import 'package:duzify/domain/search/entities/search.dart';

abstract class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final SearchEntity result;

  SearchSuccess({required this.result});
}

final class SearchError extends SearchState {
  final String message;

  SearchError({required this.message});
}
