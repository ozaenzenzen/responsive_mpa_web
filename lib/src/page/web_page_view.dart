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
class WebPageView extends StatefulWidget {
  final List<AppBarMenuButton> listMenuBar;
  final List<Widget> listWebPages;
  final double responsiveBounds;

  const WebPageView({
    Key? key,
    required this.listMenuBar,
    required this.listWebPages,
    this.responsiveBounds = 1100,
  }) : super(key: key);

  @override
  State<WebPageView> createState() => _WebPageViewState();
}

class _WebPageViewState extends State<WebPageView> {
  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    ResponsiveMPAWebConfig.listMenu = widget.listMenuBar;
    ResponsiveMPAWebConfig.appPages = widget.listWebPages;

    return ResponsiveMPAWebConfig.appPages.first;
  }
}
