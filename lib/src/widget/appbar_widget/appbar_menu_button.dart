import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

/// [AppBarMenuButton] is a widget to set up button of the appbar
/// 
/// This widget should be use inside [ResponsiveMPAWeb] widget 
/// for `listMenu` parameter
class AppBarMenuButton extends StatelessWidget {
  final Function(BuildContext context)? onTap;
  final int? indexPage;
  final Color? borderColor;
  final Color? activeBorderColor;
  final Text? menuText;
  final double? height;
  final double? width;

  const AppBarMenuButton({
    Key? key,
    this.onTap,
    required this.indexPage,
    required this.menuText,
    this.height = 60,
    this.width = 110,
    this.borderColor = Colors.white,
    this.activeBorderColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!(context);
      },
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border(
            bottom: (ResponsiveMPAWebConfig.activeIndex == indexPage)
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
