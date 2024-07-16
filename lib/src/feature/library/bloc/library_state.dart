part of 'library_bloc.dart';

sealed class LibraryState extends Equatable {
  const LibraryState();

  @override
  List<Object> get props => [];
}

final class LibraryInitial extends LibraryState {}

final class LibraryLoading extends LibraryState {}

final class LibraryLoaded extends LibraryState {
  const LibraryLoaded(this.collections);

  final List<BGOCollectionData> collections;

  @override
  List<Object> get props => [collections];
}

final class LibraryError extends LibraryState {
  const LibraryError(this.error);

  final BGOError error;

  @override
  List<Object> get props => [error];
}
