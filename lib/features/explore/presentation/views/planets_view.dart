import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:xplora/features/explore/presentation/views/widgets/planets_view_body.dart';

import '../../../../core/widgets/custon_back_icon.dart';

class PlanetsView extends StatelessWidget {
  const PlanetsView({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const CustomBackIcon(),
        title: Text(locale.planets_of),
      ),
      body: const PlanetsViewBody(),
    );
  }
}
