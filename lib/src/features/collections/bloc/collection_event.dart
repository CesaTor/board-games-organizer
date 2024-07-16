part of 'collection_bloc.dart';

sealed class CollectionEvent extends Equatable {}

final class CollectionUpdated extends CollectionEvent {
  CollectionUpdated(this.data);

  final Iterable<CollectionDbEntry> data;

  @override
  List<Object?> get props => [data];
}
