import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:uniq_dashboard/home/home.dart';
import 'package:uniq_dashboard/routes/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Uniq",
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 2000,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 0),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 29.0, fontWeight: FontWeight.bold),
          headline3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          headline4: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              color: Color(0xff344364)),
          headline5: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff344364)),
          bodyText2: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: Color(0xff344364)),
          bodyText1: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: Color(0xff344364)),
          subtitle1: TextStyle(fontSize: 12.0, color: Color(0xff344364)),
          subtitle2: TextStyle(fontSize: 10.0, color: Color(0xff344364)),
        ),
      ),
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return HomePage();
            case Routes.post:

            case Routes.style:

            default:
              return SizedBox.shrink();
          }
        });
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
