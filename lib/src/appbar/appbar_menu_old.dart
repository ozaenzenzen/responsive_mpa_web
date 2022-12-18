import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
part 'fullsize_appbar_menu.dart';
part 'halfsize_appbar_menu.dart';

class AppBarMenuOld {
  AppBarMenuOld._();

  static final AppBarMenuOld instance = AppBarMenuOld._();

  PreferredSize appBar({
    required double currentSpace,
    required int currentIndex,
    required List<Widget> listMenu,
    required BuildContext context,
    required Function() onTapToHomePage,
    Text webTitleHalfSize = const Text("WebTitleHalfSize"),
    Text webTitleFullSize = const Text("WebTitleFullSize"),
    Color iconColor = Colors.black,
    double iconSize = 35,
  }) {
    if (currentSpace < 1100) {
      return _appBarWeb(
        onTapToHomePage: onTapToHomePage,
        webTitleHalfSize: webTitleHalfSize,
        webTitleFullSize: webTitleFullSize,
        menuAppBar: HalfSizeAppBarMenu(
          iconColor: iconColor,
          iconSize: iconSize,
        ),
        context: context,
      );
    } else {
      return _appBarWeb(
        onTapToHomePage: onTapToHomePage,
        webTitleHalfSize: webTitleHalfSize,
        webTitleFullSize: webTitleFullSize,
        menuAppBar: FullSizeAppBarMenu(
          currentIndex: currentIndex,
          listMenu: listMenu,
        ),
        context: context,
      );
    }
  }

  PreferredSize _appBarWeb({
    required BuildContext context,
    required Widget menuAppBar,
    required Function() onTapToHomePage,
    required Text webTitleHalfSize,
    required Text webTitleFullSize,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
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
                // onTap: () {
                //   // Get.offNamed('/home');
                //   Get.rootDelegate.offNamed('/home');
                // },
                child: (MediaQuery.of(context).size.width < 500)
                    ? webTitleHalfSize
                    : webTitleFullSize
                //  Text(
                //   webTitle,
                //   style: GoogleFonts.poppins(
                //     color: Colors.black,
                //     fontSize: (MediaQuery.of(context).size.width < 500) ? 18 : 30,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
              ),
            ),
          ),
          actions: [menuAppBar],
        ),
      ),
    );
  }
}
