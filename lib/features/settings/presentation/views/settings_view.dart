import 'package:flutter/material.dart';
import 'package:xplora/core/widgets/custon_back_icon.dart';
import 'package:xplora/features/settings/presentation/views/widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackIcon(),
        title: const Text('Your Profile'),
      ),
      body: const SettingsViewBody(),
    );
  }
}
