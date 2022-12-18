import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FunctionHelper {
  FunctionHelper._();

  /// Setup page title in browser
  static void setPageTitle(String title, BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
      ApplicationSwitcherDescription(
        label: title,
        primaryColor: Theme.of(context).primaryColor.value, // This line is required
      ),
    );
  }
}
