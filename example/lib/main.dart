import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';
import 'package:responsive_mpa_web_example/helper/fade_route.dart';
import 'package:responsive_mpa_web_example/page/home_page.dart';
import 'package:responsive_mpa_web_example/page/second_page.dart';
import 'package:responsive_mpa_web_example/page/third_page.dart';
import 'package:responsive_mpa_web_example/page/unknown_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: (settings) {
        debugPrint("[onGenerateRoute] settings name ${settings.name}");
        if (settings.name == "/home") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const HomePage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        if (settings.name == "/secondpage") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const SecondPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        if (settings.name == "/thirdpage") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const ThirdPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        return null;
      },
      onUnknownRoute: (settings) {
        debugPrint("[onUnknownRoute] settings.arguments ${settings.arguments}");
        return PageRouteBuilder(
          settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
          pageBuilder: (_, __, ___) => const UnknownPage(),
          transitionsBuilder: (_, a, __, c) => FadeTransition(
            opacity: a,
            child: c,
          ),
        );
      },
      initialRoute: '/',
      routes: {
        // '/': (context) => const HomeScreen(),
        /// This is HomeScreen widget looks like
        '/': (context) {
          return WebPageView(
            listMenuBar: <AppBarMenuButton>[
              AppBarMenuButton(
                menuText: const Text("Menu 1"),
                pageTitle: "Home Page",
                indexPage: 1,
                onTap: () {
                  Navigator.push(
                    context,
                    FadeInRoute(
                      page: const HomePage(),
                      routeName: '/home',
                    ),
                  );
                },
              ),
              AppBarMenuButton(
                menuText: const Text("Menu 2"),
                indexPage: 2,
                pageTitle: "Second Page",
                onTap: () {
                  Navigator.push(
                    context,
                    FadeInRoute(
                      page: const SecondPage(),
                      routeName: '/secondpage',
                    ),
                  );
                },
              ),
              AppBarMenuButton(
                menuText: const Text("Menu 3"),
                indexPage: 3,
                pageTitle: "Third Page",
                onTap: () {
                  Navigator.push(
                    context,
                    FadeInRoute(
                      page: const ThirdPage(),
                      routeName: '/thirdpage',
                    ),
                  );
                },
              ),
            ],
            listWebPages: const [
              HomePage(),
              SecondPage(),
              ThirdPage(),
            ],
          );
        },
        '/secondpage': (context) => const SecondPage(),
        '/thirdpage': (context) => const ThirdPage(),
        '/404': (context) => const UnknownPage(),
      },
    );
  }
}
