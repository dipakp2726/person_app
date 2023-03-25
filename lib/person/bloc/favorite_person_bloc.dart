import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'package:person_app/person/models/models.dart';

part 'favorite_person_event.dart';
part 'favorite_person_state.dart';

class FavoritePersonBloc
    extends Bloc<FavoritePersonEvent, FavoritePersonState> {
  FavoritePersonBloc() : super(const FavoritePersonState([])) {
    on<FavoritePersonAdded>(_onPersonAdded);
    on<FavoritePersonRemoved>(_onPersonRemoved);
  }

  Future<void> _onPersonAdded(
    FavoritePersonAdded event,
    Emitter<FavoritePersonState> emit,
  ) async {
    if (!state.persons.contains(event.person)) {
      emit(FavoritePersonState([...state.persons, event.person]));
    }
  }

  Future<void> _onPersonRemoved(
    FavoritePersonRemoved event,
    Emitter<FavoritePersonState> emit,
  ) async {
    final person = [...state.persons]..remove(event.person);
    emit(FavoritePersonState(person));
  }
}
