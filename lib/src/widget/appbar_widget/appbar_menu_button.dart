import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

/// [AppBarMenuButton] is a widget to set up button of the appbar
///
/// This widget should be use inside [ResponsiveMPAWeb] widget
/// for `listMenu` parameter
class AppBarMenuButton extends StatelessWidget {
  final Function()? onTap;
  final String? pageTitle;
  final int? indexPage;
  final Color? borderColor;
  final Color? activeBorderColor;
  final Text? menuText;
  final double? height;
  final double? width;

  const AppBarMenuButton({
    Key? key,
    this.onTap,
    required this.pageTitle,
    required this.indexPage,
    required this.menuText,
    this.height = 60,
    this.width = 110,
    this.borderColor = Colors.white,
    this.activeBorderColor = Colors.grey,
  }) : super(key: key);

  static bool isFirstTime = true;

  @override
  Widget build(BuildContext context) {
    if (isFirstTime) {
      ResponsiveMPAWebConfig.activeIndex = indexPage!;
      FunctionHelper.setPageTitle(pageTitle!, context);
      isFirstTime = false;
    }
    return InkWell(
      onTap: () {
        ResponsiveMPAWebConfig.activeIndex = indexPage!;
        FunctionHelper.setPageTitle(pageTitle!, context);
        onTap!();
      },
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border(
            bottom: (indexPage == ResponsiveMPAWebConfig.activeIndex)
                ? BorderSide(
                    style: BorderStyle.solid,
                    width: 2,
                    color: activeBorderColor!,
                  )
                : BorderSide(
                    style: BorderStyle.none,
                    width: 2,
                    color: borderColor!,
                  ),
          ),
        ),
        child: menuText,
      ),
    );
  }
}
