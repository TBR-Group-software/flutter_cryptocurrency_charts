import 'package:clean_app/backbone/dependency_injection.dart' as di;
import 'package:clean_app/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Size screenSize = Size(375, 812);

void main() {
  di.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: screenSize,
      builder: () => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Clean App',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
