import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/core/utils/assets.dart';
import 'package:xplora/core/widgets/custom_button.dart';

import '../../../../../core/utils/router.dart';

class OptionsViewBody extends StatelessWidget {
  const OptionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                  text: 'Start Your Journey🪐',
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
                  text: 'About the App',
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
