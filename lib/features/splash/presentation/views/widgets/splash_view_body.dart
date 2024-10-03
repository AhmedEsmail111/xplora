import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:locator/locator.dart';
import 'package:xplora/core/utils/my_consonants.dart';
import 'package:xplora/core/utils/services/shared_preferences.dart';

import '../../../../../core/utils/router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
// with SingleTickerProviderStateMixin
{
  // late final AnimationController animationController;
  // late final Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  // @override
  // void dispose() {
  //   super.dispose();

  //   animationController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/splash.gif',
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ],
    );
  }

  // void _initSlidingAnimation() {
  //   animationController = AnimationController(
  //     vsync: this,
  //     duration: const Duration(seconds: 2),
  //   );

  //   slidingAnimation =
  //       Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero)
  //           .animate(animationController);

  //   animationController.forward();
  // }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      final isSettingShowedBefore =
          const Locator().get<CacheService>().getData(key: userName) != null;
      if (isSettingShowedBefore) {
        GoRouter.of(context).pushReplacement(
          AppRouter.optionsView,
        );
        return;
      }
      GoRouter.of(context).pushReplacement(
        AppRouter.setupUserView,
      );
    });
  }
}
