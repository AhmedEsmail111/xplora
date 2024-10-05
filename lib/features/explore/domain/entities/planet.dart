// ignore_for_file: public_member_api_docs, sort_constructors_first

class Planet {
  final String id;
  final String name;
  final String description;
  final String imageNormal;
  final String image3d;
  final String type,
      discoveryDate,
      size,
      temperature,
      scientificInterest,
      link,
      nickName;
  const Planet({
    required this.id,
    required this.name,
    required this.description,
    required this.image3d,
    required this.type,
    required this.discoveryDate,
    required this.size,
    required this.temperature,
    required this.scientificInterest,
    required this.link,
    required this.nickName,
    required this.imageNormal,
  });
}
