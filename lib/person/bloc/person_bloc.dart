import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:person_app/person/models/person.dart';

part 'person_event.dart';
part 'person_state.dart';

class PersonBloc extends Bloc<PersonEvent, PersonList> {
  PersonBloc() : super(const PersonList([])) {
    on<PersonAdded>(_onPersonAdded);
  }

  Future<void> _onPersonAdded(
    PersonAdded event,
    Emitter<PersonList> emit,
  ) async {
    if (!state.persons.contains(event.person)) {
      emit(PersonList([...state.persons, event.person]));
    }
  }
}
