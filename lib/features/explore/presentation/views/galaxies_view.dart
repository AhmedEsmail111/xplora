import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:locator/locator.dart';
import 'package:xplora/core/utils/router.dart';
import 'package:xplora/core/utils/services/shared_preferences.dart';
import 'package:xplora/core/widgets/custon_back_icon.dart';

import '../../../../core/utils/my_consonants.dart';
import 'widgets/galaxies_view_body.dart';

class GalaxiesView extends StatelessWidget {
  const GalaxiesView({super.key});

  @override
  Widget build(BuildContext context) {
    final String savedName =
        const Locator().get<CacheService>().getData(key: userName);
    return Scaffold(
      appBar: AppBar(
        title: Text('The Universe is Yours, $savedName'),
        leadingWidth: 40.w,
        leading: const CustomBackIcon(),
        actions: [
          IconButton(
            iconSize: 25.w,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.settingsView);
            },
            icon: const Icon(
              Icons.manage_accounts,
            ),
          )
        ],
      ),
      body: const GalaxiesViewBody(),
    );
  }
}
