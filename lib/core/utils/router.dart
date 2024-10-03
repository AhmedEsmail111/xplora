import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xplora/features/explore/domain/entities/galaxy.dart';
import 'package:xplora/features/explore/domain/entities/planet.dart';
import 'package:xplora/features/explore/presentation/views/galaxies_view.dart';
import 'package:xplora/features/explore/presentation/views/planet_details_view.dart';
import 'package:xplora/features/explore/presentation/views/planets_view.dart';
import 'package:xplora/features/options/presentation/views/options_view.dart';
import 'package:xplora/features/settings/presentation/views/set_up_user_view.dart';
import 'package:xplora/features/settings/presentation/views/settings_view.dart';

import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const onBoardingViewRoute = '/onBoardingViewRoute';
  static const setupUserView = '/setupUserView';
  static const optionsView = '/optionsView';
  static const galaxiesView = '/galaxiesView';
  static const planetsView = '/planetsView';
  static const planetDetailsView = '/planetDetailsView';
  static const settingsView = '/settingsView';

  static const fadingAnimationDuration = Duration(milliseconds: 400);
  static const slidAnimationDuration = Duration(milliseconds: 350);
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (ctx, state) => const SplashView(),
      ),
      GoRoute(
        path: onBoardingViewRoute,
        pageBuilder: (ctx, state) => CustomTransitionPage(
          transitionDuration: fadingAnimationDuration,
          reverseTransitionDuration: fadingAnimationDuration,
          key: state.pageKey,
          child: const OnBoardingView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        path: setupUserView,
        pageBuilder: (ctx, state) => CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: fadingAnimationDuration,
          reverseTransitionDuration: fadingAnimationDuration,
          child: const SetupUserView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        path: optionsView,
        pageBuilder: (ctx, state) => CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: fadingAnimationDuration,
          reverseTransitionDuration: fadingAnimationDuration,
          child: const OptionsView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        path: galaxiesView,
        pageBuilder: (ctx, state) => CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: fadingAnimationDuration,
          reverseTransitionDuration: fadingAnimationDuration,
          child: const GalaxiesView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        path: settingsView,
        pageBuilder: (ctx, state) => CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: fadingAnimationDuration,
          reverseTransitionDuration: fadingAnimationDuration,
          child: const SettingsView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        path: planetsView,
        pageBuilder: (ctx, state) => CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: fadingAnimationDuration,
          reverseTransitionDuration: fadingAnimationDuration,
          child: PlanetsView(
            galaxy: state.extra as Galaxy,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      ),
      GoRoute(
        path: planetDetailsView,
        pageBuilder: (ctx, state) => CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: fadingAnimationDuration,
          reverseTransitionDuration: fadingAnimationDuration,
          child: PlanetDetailsView(
            planet: state.extra as Planet,
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      ),
    ],
  );
}
