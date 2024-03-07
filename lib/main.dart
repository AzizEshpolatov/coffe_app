import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/screens/splash/splash_screen.dart';
import 'package:task/screens/theme/app_theme.dart';

import 'data/repostory/storage_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await StorageRepository.init();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("uz", "UZ"),
        Locale("ru", "RU"),
      ],
      path: "assets/translations",
      fallbackLocale: const Locale("uz", "UZ"),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return ScreenUtilInit(
      designSize: Size(width, height),
      builder: (context, child) {
        ScreenUtil.init(context);
        return AdaptiveTheme(
          light: AppTheme.lightTheme,
          dark: AppTheme.darkTheme,
          initial: AdaptiveThemeMode.system,
          builder: (theme,darkTheme) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: theme,
              darkTheme: darkTheme,
              locale: context.locale,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              home: const SplashScreen(),
            );
          },
        );
      },
    );
  }
}
