import 'package:flutter/material.dart';

abstract class AppBarTitleWidget extends PreferredSizeWidget {}

enum AppBarTitleType { widget, image, text }

class AppBarTitle extends StatelessWidget {
  final Widget? widget;
  final Image? image;
  final Text? text;
  final AppBarTitleType type;

  const AppBarTitle({
    Key? key,
    required this.widget,
  })  : type = AppBarTitleType.widget,
        image = null,
        text = null,
        super(key: key);

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
