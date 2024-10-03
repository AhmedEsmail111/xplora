// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Planet {
  final String id;
  final String name;
  final String description;
  final List<String> images;
  const Planet({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'images': images,
    };
  }

  factory Planet.fromMap(Map<String, dynamic> map) {
    return Planet(
        id: map['id'] as String,
        name: map['name'] as String,
        description: map['description'] as String,
        images: List<String>.from(
          (map['images'] as List<String>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Planet.fromJson(String source) =>
      Planet.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Planet(id: $id, name: $name, description: $description, images: $images)';
  }
}
