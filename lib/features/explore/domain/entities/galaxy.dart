// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'planet.dart';

class Galaxy {
  final String id;
  final String name;
  final String description;

  final String image;
  final List<Planet> planets;
  const Galaxy({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.planets,
  });
}
