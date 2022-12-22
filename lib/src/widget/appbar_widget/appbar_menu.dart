import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

abstract class AppBarMenuWidget {}

/// AppBar widget of this plugin. Automatically handling responsive size
/// of device.
/// You can use [AppBarMenu.customIconMenu] to customize icon when the
/// horizontal size of the device is below 1100 pixels
class AppBarMenu extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTapToHomePage;
  final AppBarTitle appBarTitle;
  // final List<Widget> listMenu;
  final Color? iconColor;
  final double? iconSize;
  final Icon? iconMenu;
  final double height;
  final double widthBetweenMenu;
  // final bool useIconMenu;

  const AppBarMenu({
    Key? key,
    required this.appBarTitle,
    // required this.listMenu,
    this.onTapToHomePage,
    this.height = 80,
    this.iconColor = Colors.black,
    this.iconSize = 35,
    this.widthBetweenMenu = 10,
  })  : iconMenu = null,
        // useIconMenu = false,
        super(key: key);

  const AppBarMenu.customIconMenu({
    Key? key,
    required this.appBarTitle,
    // required this.listMenu,
    required this.iconMenu,
    this.onTapToHomePage,
    this.height = 80,
    this.widthBetweenMenu = 10,
  })  : iconColor = null,
        iconSize = null,
        // useIconMenu = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double currentSpace = MediaQuery.of(context).size.width;
    if (currentSpace < 1100) {
      return PreferredSize(
        preferredSize: Size.fromHeight(height),
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          child: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Container(
              padding: EdgeInsets.only(
                left: (MediaQuery.of(context).size.width < 500) ? 30 : 80,
              ),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  onTap: onTapToHomePage,
                  child: appBarTitle,
                ),
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(
                  right: (MediaQuery.of(context).size.width < 500) ? 40 : 80,
                ),
                child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  padding: const EdgeInsets.all(0),
                  icon: (iconMenu != null)
                      ? iconMenu!
                      : Icon(
                          Icons.reorder,
                          size: iconSize,
                          color: iconColor,
                        ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return PreferredSize(
        preferredSize: Size.fromHeight(height),
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          // color: Colors.red,
          child: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Container(
              padding: EdgeInsets.only(
                left: (MediaQuery.of(context).size.width < 500) ? 30 : 80,
              ),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  onTap: onTapToHomePage,
                  child: appBarTitle,
                ),
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 80),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   // children: listMenu,
                //   children: ResponsiveMPAWebConfig.listMenu,
                // ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return AppBarMenuButton(
                      onTap: ResponsiveMPAWebConfig.listMenu[index].onTap,
                      // currentIndex: ResponsiveMPAWebConfig.listMenu[index].currentIndex,
                      indexPage: ResponsiveMPAWebConfig.listMenu[index].indexPage,
                      menuText: ResponsiveMPAWebConfig.listMenu[index].menuText,
                      borderColor: ResponsiveMPAWebConfig.listMenu[index].borderColor,
                      activeBorderColor: ResponsiveMPAWebConfig.listMenu[index].activeBorderColor,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: widthBetweenMenu);
                  },
                  itemCount: ResponsiveMPAWebConfig.listMenu.length,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
