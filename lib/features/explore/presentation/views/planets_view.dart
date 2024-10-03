import 'package:flutter/material.dart';
import 'package:xplora/features/explore/domain/entities/galaxy.dart';
import 'package:xplora/features/explore/presentation/views/widgets/planets_view_body.dart';

import '../../../../core/widgets/custon_back_icon.dart';

class PlanetsView extends StatelessWidget {
  const PlanetsView({super.key, required this.galaxy});
  final Galaxy galaxy;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const CustomBackIcon(),
        title: Text('Planets of ${galaxy.name}'),
      ),
      body: PlanetsViewBody(
        galaxy: galaxy,
      ),
    );
  }
}
