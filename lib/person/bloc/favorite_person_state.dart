part of 'favorite_person_bloc.dart';

@immutable
class FavoritePersonState extends Equatable {
  const FavoritePersonState(this.favoritePersons);

  final List<Person> favoritePersons;

  @override
  List<Object> get props => [favoritePersons];

  FavoritePersonState copyWith({List<Person>? person}) =>
      FavoritePersonState(person ?? favoritePersons);
}
