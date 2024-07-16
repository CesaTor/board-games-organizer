import 'package:bgo/src/core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'collection_event.dart';

class CollectionBloc
    extends Bloc<CollectionEvent, Iterable<CollectionDbEntry>> {
  CollectionBloc({required this.getLocalCollections}) : super([]) {
    getLocalCollections().listen((event) {
      add(CollectionUpdated(event));
    });

    on<CollectionEvent>((event, emit) {
      switch (event) {
        case CollectionUpdated():
          emit(event.data);
      }
    });
  }

  final GetLocalCollections getLocalCollections;
}
