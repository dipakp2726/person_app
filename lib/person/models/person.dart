// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Person extends Equatable {
  final String name;
  final String color;
  const Person({
    required this.name,
    required this.color,
  });

  Person copyWith({
    String? name,
    String? color,
  }) {
    return Person(
      name: name ?? this.name,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'color': color,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      color: map['color'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(name: $name, color: $color)';

  @override
  // TODO: implement props
  List<Object?> get props => [name, color];
}
