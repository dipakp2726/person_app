import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:person_app/person/bloc/favorite_person_bloc.dart';
import 'package:person_app/person/widgets/animated_scroll_view_item.dart';

class FavoritePersonListView extends StatelessWidget {
  const FavoritePersonListView({super.key});

  @override
  Widget build(BuildContext context) {
    final persons = context.watch<FavoritePersonBloc>().state.persons;

    return ListView.builder(
      itemCount: persons.length,
      itemBuilder: (context, index) {
        final person = persons[index];

        return AnimatedScrollViewItem(
          child: ListTile(
            title: Text(person.name),
            subtitle: Text(person.color),
            trailing: GestureDetector(
              onTap: () {
                context
                    .read<FavoritePersonBloc>()
                    .add(FavoritePersonRemoved(person));
              },
              child: const Icon(Icons.bookmark_border_rounded),
            ),
          ),
        );
      },
    );
  }
}
