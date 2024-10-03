import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:locator/locator.dart';
import 'package:xplora/core/utils/my_bloc_observer.dart';

import 'core/utils/router.dart';
import 'core/utils/services/shared_preferences.dart';
import 'core/utils/singletone_locator.dart';
import 'core/utils/theme.dart';

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
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          theme: darkTheme,
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


// flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi