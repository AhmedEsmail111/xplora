import 'package:flutter/material.dart';
import 'package:xplora/features/explore/domain/entities/planet.dart';
import 'package:xplora/features/explore/presentation/views/widgets/planet_details_view_body.dart';

class PlanetDetailsView extends StatelessWidget {
  const PlanetDetailsView({super.key, required this.planet});
  final Planet planet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlanetDetailsViewBody(
        planet: planet,
      ),
    );
  }
}
