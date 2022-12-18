import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';
import 'package:responsive_mpa_web/src/responsive_mpa_web.dart';
import 'package:responsive_mpa_web/src/appbar/appbar_menu_button.dart';

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
