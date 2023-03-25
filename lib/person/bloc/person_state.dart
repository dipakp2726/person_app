part of 'person_bloc.dart';

@immutable
class PersonList extends Equatable {
  const PersonList(this.persons);

  final List<Person> persons;

  @override
  List<Object?> get props => [persons];
}
