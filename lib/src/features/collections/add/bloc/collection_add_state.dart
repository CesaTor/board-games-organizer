part of 'collection_add_bloc.dart';

sealed class CollectionAddState extends Equatable {
  const CollectionAddState();
  
  @override
  List<Object> get props => [];
}

final class CollectionAddInitial extends CollectionAddState {}
