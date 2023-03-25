part of 'person_bloc.dart';

@immutable
abstract class PersonEvent extends Equatable {}

class PersonAdded extends PersonEvent {
  PersonAdded(this.person);

  final Person person;

  @override
  List<Object?> get props => [person];
}
