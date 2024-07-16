part of 'library_bloc.dart';

sealed class LibraryEvent extends Equatable {
  const LibraryEvent();

  @override
  List<Object> get props => [];
}

final class LibraryInit extends LibraryEvent {}

final class LibraryRefresh extends LibraryEvent {}

final class LibrarySearch extends LibraryEvent {
  const LibrarySearch(this.query);

  final String query;

  @override
  List<Object> get props => [query];
}

final class LibrarySelect extends LibraryEvent {
  const LibrarySelect(this.collection);

  final BGOCollection collection;

  @override
  List<Object> get props => [collection];
}

final class LibraryDelete extends LibraryEvent {
  const LibraryDelete(this.collectionId);

  final int collectionId;

  @override
  List<Object> get props => [collectionId];
}

final class LibraryAdd extends LibraryEvent {
  const LibraryAdd(this.collection);

  final BGOCollectionCompanion collection;

  @override
  List<Object> get props => [collection];
}
