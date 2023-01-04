import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class ResponsiveMPAWebConfig {
  ResponsiveMPAWebConfig._();

  static int activeIndex = 1;
  static List<AppBarMenuButton> listMenu = [];

  static List<Widget> appPages = [];

  static void openDrawer(BuildContext context, {TypeDrawer typeDrawer = TypeDrawer.endDrawer}) {
    if (typeDrawer == TypeDrawer.endDrawer) {
      Scaffold.of(context).openEndDrawer();
    } else {
      Scaffold.of(context).openDrawer();
    }
  }
}
