import 'package:bgo/src/core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'collection_add_event.dart';
part 'collection_add_state.dart';

class CollectionAddBloc extends Bloc<CollectionAddEvent, CollectionAddState> {
  final Iterable<CollectionDbEntry> collections;

  CollectionAddBloc() : super(CollectionAddInitial()) {
    on<CollectionAddEvent>((event, emit) {
      switch (event) {
        case CollectionAddClicked():
        case CollectionRemoveClicked():
      }
    });
  }
}
