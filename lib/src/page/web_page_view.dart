import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

/// An initial widget as a root configuration of `responsive_mpa_web` plugin.
/// 
/// You should define this widget as the first widget of the app.
/// 
/// example:
/// ```dart
/// return WebPageView(
///   listMenuBar: <AppBarMenuButton>[
///     AppBarMenuButton(
///       menuText: const Text("Menu 1"),
///       pageTitle: "Home Page",
///       indexPage: 1,
///       onTap: () {
///         Navigator.push(
///           context,
///           FadeInRoute(
///             page: const HomePage(),
///             routeName: '/home',
///           ),
///         );
///       },
///     ),
///     AppBarMenuButton(
///       menuText: const Text("Menu 2"),
///       indexPage: 2,
///       pageTitle: "Second Page",
///       onTap: () {
///         Navigator.push(
///           context,
///           FadeInRoute(
///             page: const SecondPage(),
///             routeName: '/secondpage',
///           ),
///         );
///       },
///     ),
///     AppBarMenuButton(
///       menuText: const Text("Menu 3"),
///       indexPage: 3,
///       pageTitle: "Third Page",
///       onTap: () {
///         Navigator.push(
///           context,
///           FadeInRoute(
///             page: const ThirdPage(),
///             routeName: '/thirdpage',
///           ),
///         );
///       },
///     ),
///   ],
///   listWebPages: const [
///     HomePage(),
///     SecondPage(),
///     ThirdPage(),
///   ],
/// );
/// ```
class WebScaffold extends StatefulWidget {
  final List<AppBarMenuButton> menuBar;
  final List<Widget> menuBarView;
  final double responsiveBounds;

  const WebScaffold({
    Key? key,
    required this.menuBar,
    required this.menuBarView,
    this.responsiveBounds = 1100,
  }) : super(key: key);

  @override
  State<WebScaffold> createState() => _WebScaffoldState();
}

class _WebScaffoldState extends State<WebScaffold> {
  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    ResponsiveMPAWebConfig.listMenu = widget.menuBar;
    ResponsiveMPAWebConfig.appPages = widget.menuBarView;

    return ResponsiveMPAWebConfig.appPages.first;
  }
}
