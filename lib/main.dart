import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locator/locator.dart';
import 'package:xplora/core/utils/my_bloc_observer.dart';
import 'package:xplora/features/settings/presentation/manager/language/language_cubit.dart';
import 'package:xplora/features/settings/presentation/manager/language/language_states.dart';

import 'core/utils/router.dart';
import 'core/utils/services/shared_preferences.dart';
import 'core/utils/singletone_locator.dart';
import 'core/utils/theme.dart';
import 'l10n/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initMain();
  runApp(const XPloraApp());
}

class XPloraApp extends StatelessWidget {
  const XPloraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => LanguageCubit(),
          child: BlocBuilder<LanguageCubit, LanguageStates>(
              builder: (context, state) {
            final languageCubit = LanguageCubit.of(context);
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: AppRouter.router,
              theme: darkTheme,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
              ],
              locale: languageCubit.locale,
              supportedLocales: L10n.all,
            );
          }),
        );
      },
    );
  }
}

void initMain() async {
  Bloc.observer = MyBlocObserver();
  registerSingletonsInstances();
  const locator = Locator();
  locator.get<CacheService>().init();
}


// flutter build apk --target-platform android-arm64 --split-per-abi