import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/core/utils/colors.dart';
import 'package:xplora/core/utils/my_consonants.dart';
import 'package:xplora/core/utils/router.dart';
import 'package:xplora/core/utils/text_styles.dart';
import 'package:xplora/core/widgets/custon_back_icon.dart';
import 'package:xplora/features/settings/presentation/manager/language/language_cubit.dart';

import 'widgets/galaxies_view_body.dart';

class GalaxiesView extends StatelessWidget {
  const GalaxiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40.w,
        leading: const CustomBackIcon(),
        actions: [
          ElevatedButton.icon(
            style: TextButton.styleFrom(
              shape: roundedBorder8Radius,
              foregroundColor: Colors.white,
              backgroundColor: lighterDarkColor,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    LanguageCubit.of(context).locale.languageCode == 'en'
                        ? 'Coming soon'
                        : 'قريبا',
                    style: style14Bold.copyWith(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  backgroundColor: secondaryColor,
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.only(
                    bottom: 100.h,
                    right: 24.w,
                    left: 24.w,
                  ),
                  duration: const Duration(milliseconds: 2500),
                ),
              );
            },
            icon: const Icon(
              Icons.view_in_ar,
            ),
            label: Text(
              'VR Mode',
              style: style14Bold,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          IconButton(
            iconSize: 25.w,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.settingsView);
            },
            icon: const Icon(
              Icons.manage_accounts,
            ),
          ),
        ],
      ),
      body: const GalaxiesViewBody(),
    );
  }
}
