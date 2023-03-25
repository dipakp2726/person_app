part of 'favorite_person_bloc.dart';

@immutable
class FavoritePersonState extends Equatable {
  const FavoritePersonState(this.persons);

  final List<Person> persons;

  @override
  List<Object> get props => [persons];

  FavoritePersonState copyWith({List<Person>? person}) =>
      FavoritePersonState(person ?? persons);
}
