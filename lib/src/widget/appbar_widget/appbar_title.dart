import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

abstract class AppBarTitleWidget extends PreferredSizeWidget {}


/// [AppBarTitle] is a widget to define your web name on the appbar
/// 
/// You can use either 
/// ```dart
/// AppBarTitle.image(image: Image()) 
/// ```
/// or
/// ```dart
/// AppBarTitle.widget(widget: Widget()) 
/// ```
/// or
/// ```dart
/// AppBarTitle.text(text: Text())
/// ```
class AppBarTitle extends StatelessWidget {
  final Widget? widget;
  final Image? image;
  final Text? text;
  final AppBarTitleType type;

  // const AppBarTitle({
  //   Key? key,
  //   required this.widget,
  // })  : type = AppBarTitleType.widget,
  //       image = null,
  //       text = null,
  //       super(key: key);

  const AppBarTitle.widget({
    Key? key,
    required this.widget,
  })  : type = AppBarTitleType.widget,
        image = null,
        text = null,
        super(key: key);

  const AppBarTitle.image({
    Key? key,
    required this.image,
  })  : type = AppBarTitleType.image,
        widget = null,
        text = null,
        super(key: key);

  const AppBarTitle.text({
    Key? key,
    required this.text,
  })  : type = AppBarTitleType.text,
        image = null,
        widget = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (type == AppBarTitleType.image) {
      return image!;
    } else if (type == AppBarTitleType.text) {
      return text!;
    } else {
      return widget!;
    }
  }
}
