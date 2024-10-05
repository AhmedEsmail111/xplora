import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/core/widgets/custon_back_icon.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/router.dart';
import '../../../../core/utils/text_styles.dart';
import 'widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: const CustomBackIcon(),
        actions: [
          TextButton(
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.galaxiesView);
            },
            child: Text(
              'SKIP',
              style: style18ExtraBold.copyWith(
                color: brightestColor,
              ),
            ),
          )
        ],
      ),
      body: const OnBoardingViewBody(),
    );
  }
}
