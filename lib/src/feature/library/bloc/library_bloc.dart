import 'package:bgo/src/core/core.dart';
import 'package:bgo/src/feature/feature.dart';
import 'package:bgo/src/feature/library/usecases/get_collections.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'library_event.dart';
part 'library_state.dart';

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc(
    this._getCollections,
    this._insertCollection,
  ) : super(LibraryInitial()) {
    on<LibraryEvent>((event, emit) async {
      switch (event) {
        case LibraryInit():
        case LibraryRefresh():
          emit(LibraryLoading());
          (await _getCollections().run()).fold(
            (error) => emit(LibraryError(error)),
            (collections) => emit(LibraryLoaded(collections)),
          );
        case LibrarySearch():
        case LibrarySelect():
        case LibraryDelete():
          break;
        case LibraryAdd():
          emit(LibraryLoading());
          (await _insertCollection(event.collection).run()).fold(
            (error) => emit(LibraryError(error)),
            (collections) => add(LibraryRefresh()),
          );
      }
    });
  }

  final GetCollections _getCollections;
  final InsertCollection _insertCollection;
}
