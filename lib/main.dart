import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Size screenSize = Size(375, 812);

Future<void> main() async {
  di.init();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const <Locale>[
      Locale(
        'en',
      ),
      Locale(
        'ru',
      )
    ],
    fallbackLocale: const Locale(
      'en',
    ),
    path: 'assets/translations',
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  bool themeMode = true;
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: screenSize,
      builder: () => MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(),
        themeMode: themeMode ? ThemeMode.dark : ThemeMode.light,
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        title: 'Crypto Aggregator',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
