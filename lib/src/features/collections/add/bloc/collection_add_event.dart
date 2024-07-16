part of 'collection_add_bloc.dart';

sealed class CollectionAddEvent extends Equatable {
  const CollectionAddEvent();
}

class CollectionAddClicked extends CollectionAddEvent {
  const CollectionAddClicked(this.game);
  final BoardGameDbEntry game;

  @override
  List<Object> get props => [game];
}

class CollectionRemoveClicked extends CollectionAddEvent {
  const CollectionRemoveClicked(this.game);
  final BoardGameDbEntry game;

  @override
  List<Object> get props => [game];
}
