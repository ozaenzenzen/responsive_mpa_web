import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

/// Widget contains drawer by `responsive_mpa_web` package
///  
/// [AppDrawer] can be use inside [HalfSizeScaffoldPage] widget for 
/// `drawer` parameter
class AppDrawer extends StatelessWidget {
  final double width;
  final Color color;

  const AppDrawer({
    Key? key,
    this.width = 200,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width * 0.4,
      width: width,
      // color: Colors.blueGrey.shade300,
      color: color,
      child: ListView(
        children: ResponsiveMPAWebConfig.listMenu,
      ),
    );
  }
}
