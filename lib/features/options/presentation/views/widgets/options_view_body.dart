import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/core/utils/assets.dart';
import 'package:xplora/core/widgets/custom_button.dart';

import '../../../../../core/utils/router.dart';

class OptionsViewBody extends StatelessWidget {
  const OptionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          optionsBackgroundImage,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: locale.start_journey,
                  onPressed: () {
                    GoRouter.of(context).push(
                      AppRouter.galaxiesView,
                    );
                  },
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomButton(
                  text: locale.about_app,
                  onPressed: () {
                    GoRouter.of(context).push(
                      AppRouter.onBoardingViewRoute,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
