import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class ResponsiveMPAWebConfig {
  ResponsiveMPAWebConfig._();

  static int activeIndex = 0;
  static List<AppBarMenuButton> listMenu = [];

  // List<WebPageWidget> appPages = [];
  static List<Widget> appPages = [];

  // // Map<String, bool> activeController = {};
  // Map<int, bool> activeController = {};

  static void openDrawer(BuildContext context, {TypeDrawer typeDrawer = TypeDrawer.endDrawer}) {
    if (typeDrawer == TypeDrawer.endDrawer) {
      Scaffold.of(context).openEndDrawer();
    } else {
      Scaffold.of(context).openDrawer();
    }
  }

  // void convertToMap(List<AppBarMenuButton> listMenu) {
  //   debugPrint("test setActivePage ${listMenu.map((data) {
  //     activeController.addAll(
  //       {
  //         data.indexPage!: false,
  //       },
  //     );
  //   }).toList()}");
  //   debugPrint("activeController $activeController");
  // }

  // void setActivePage(int activePage) {
  //   activeController.updateAll((key, value) => false);
  //   debugPrint("activeController1 [activePage] $activeController");
  //   if (activeController.containsKey(activePage)) {
  //     activeController[activePage] = true;
  //   }
  //   debugPrint("activeController2 [activePage] $activeController");
  //   activeController.forEach((key, value) {
  //     if (activeController[key] == true) {
  //       activeIndex = key;
  //       debugPrint("keynya adalah $key");
  //       debugPrint("keynya adalah{activeIndex} $activeIndex");
  //     }
  //   });
  // }

  // /// In case you want to setup outside [MaterialApp]
  // void setupListMenu({required List<AppBarMenuButton> listMenuAppBar}) {
  //   listMenu = listMenuAppBar;
  // }
}
