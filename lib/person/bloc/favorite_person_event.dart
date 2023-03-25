part of 'favorite_person_bloc.dart';

@immutable
abstract class FavoritePersonEvent extends Equatable {
  const FavoritePersonEvent();

  @override
  List<Object> get props => [];
}

class FavoritePersonAdded extends FavoritePersonEvent {
  const FavoritePersonAdded(this.person);

  final Person person;

  @override
  List<Object> get props => [person];
}

class FavoritePersonRemoved extends FavoritePersonEvent {
  const FavoritePersonRemoved(this.person);

  final Person person;

  @override
  List<Object> get props => [person];
}
