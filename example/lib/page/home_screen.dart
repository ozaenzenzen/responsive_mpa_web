import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';
import 'package:responsive_mpa_web_example/helper/fade_route.dart';
import 'package:responsive_mpa_web_example/page/home_page.dart';
import 'package:responsive_mpa_web_example/page/second_page.dart';
import 'package:responsive_mpa_web_example/page/third_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WebScaffold(
      menuBar: <AppBarMenuButton>[
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
      menuBarView: const [
        HomePage(),
        SecondPage(),
        ThirdPage(),
      ],
    );
  }
}
