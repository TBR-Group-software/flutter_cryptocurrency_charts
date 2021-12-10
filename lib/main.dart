import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/presentation/bloc/settings/bloc.dart';
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:clean_app/theme/palette.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Size screenSize = Size(375, 812);

Future<void> main() async {
  di.init();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const <Locale>[
      Locale('en'),
      Locale('ru'),
    ],
    fallbackLocale: const Locale('en'),
    path: 'assets/translations',
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final SettingsBloc settingsBloc = di.sl.get();
  String? themeType;
  final AppRouter _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    settingsBloc.add(const SettingsEvent.getTheme());
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: screenSize,
      builder: () => BlocBuilder<SettingsBloc, SettingsState>(
        bloc: settingsBloc,
        builder: (_, SettingsState state) {
          return MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              primaryColor: Palette.overlay1,
              hintColor: Palette.background,
              focusColor: Palette.tertriary,
            ),
            themeMode:
                state.themeType == 'night' ? ThemeMode.dark : ThemeMode.light,
            darkTheme: ThemeData(
              scaffoldBackgroundColor: Palette.background,
              primaryColor: Palette.base1,
              hintColor: Palette.white,
              focusColor: Palette.primary,
            ),
            debugShowCheckedModeBanner: false,
            title: 'Crypto Aggregator',
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
