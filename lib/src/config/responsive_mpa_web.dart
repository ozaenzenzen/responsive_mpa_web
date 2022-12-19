import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';
import 'package:responsive_mpa_web/src/responsive_mpa_web.dart';
import 'package:responsive_mpa_web/src/appbar/appbar_menu_button.dart';

///Main configuration of `responsive_mpa_web` plugin to set 
///`listMenu` in [AppBarMenu]
/// 
/// example:
/// 
/// ```dart
/// return MaterialApp(
///  title: 'Flutter Demo',
///  home: ResponsiveMPAWeb(
///    listMenu: [
///      AppBarMenuButton(
///        menuText: const Text("Menu 1"),
///        indexPage: 1,
///        onTap: (context) {
///          Navigator.push(
///            context,
///            FadeInRoute(
///              page: const HomePage(),
///              routeName: '/home',
///            ),
///          );
///        },
///      ),
///      AppBarMenuButton(
///        menuText: const Text("Menu 2"),
///        indexPage: 2,
///        onTap: (context) {
///          Navigator.push(
///            context,
///            FadeInRoute(
///              page: const SecondPage(),
///              routeName: '/secondpage',
///            ),
///          );
///        },
///      ),
///      AppBarMenuButton(
///        menuText: const Text("Menu 3"),
///        indexPage: 3,
///        onTap: (context) {
///          Navigator.push(
///            context,
///            FadeInRoute(
///              page: const ThirdPage(),
///              routeName: '/thirdpage',
///            ),
///          );
///        },
///      ),
///    ],
///    child: const HomePage(),
///  ),
/// ```
class ResponsiveMPAWeb extends StatelessWidget {
  final List<AppBarMenuButton> listMenu;
  final Widget child;

  const ResponsiveMPAWeb({
    Key? key,
    required this.listMenu,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveMPAWebConfig.listMenu = listMenu;
    return child;
  }
}
