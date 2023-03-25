import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:person_app/person/bloc/person_bloc.dart';
import 'package:person_app/person/models/models.dart';

class PersonEntryForm extends StatefulWidget {
  const PersonEntryForm({super.key});

  @override
  State<PersonEntryForm> createState() => _PersonEntryFormState();
}

class _PersonEntryFormState extends State<PersonEntryForm> {
  final nameController = TextEditingController();
  final colorController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                label: Text('Name'),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Name';
                }

                return null;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: colorController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Age'),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Name';
                }

                return null;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  final person = Person(
                    name: nameController.text,
                    color: colorController.text,
                  );
                  context.read<PersonBloc>().add(
                        PersonAdded(person),
                      );
                }
              },
              child: const Text('Add person'),
            )
          ],
        ),
      ),
    );
  }
}
