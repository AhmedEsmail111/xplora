// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'planet.dart';

class Galaxy {
  final String id;
  final String name;
  final String description;
  final int numberOfPlanets;
  final int numberOfStars;
  final String image;
  final List<Planet> planets;
  const Galaxy({
    required this.id,
    required this.name,
    required this.description,
    required this.numberOfPlanets,
    required this.numberOfStars,
    required this.image,
    required this.planets,
  });

  Galaxy copyWith({
    String? id,
    String? name,
    String? description,
    int? numberOfPlanets,
    int? numberOfStars,
    String? image,
    List<Planet>? planets,
  }) {
    return Galaxy(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      numberOfPlanets: numberOfPlanets ?? this.numberOfPlanets,
      numberOfStars: numberOfStars ?? this.numberOfStars,
      image: image ?? this.image,
      planets: planets ?? this.planets,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'numberOfPlanets': numberOfPlanets,
      'numberOfStars': numberOfStars,
      'image': image,
      'planets': planets.map((x) => x.toMap()).toList(),
    };
  }

  factory Galaxy.fromMap(Map<String, dynamic> map) {
    return Galaxy(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      numberOfPlanets: map['numberOfPlanets'] as int,
      numberOfStars: map['numberOfStars'] as int,
      image: map['image'] as String,
      planets: List<Planet>.from(
        (map['planets'] as List<int>).map<Planet>(
          (x) => Planet.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Galaxy.fromJson(String source) =>
      Galaxy.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Galaxy(id: $id, name: $name, description: $description, numberOfPlanets: $numberOfPlanets, numberOfStars: $numberOfStars, image: $image, planets: $planets)';
  }
}
