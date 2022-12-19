import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class UnknownPage extends StatefulWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  State<UnknownPage> createState() => _UnknownPageState();
}

class _UnknownPageState extends State<UnknownPage> {
  @override
  Widget build(BuildContext context) {
    FunctionHelper.setPageTitle("Unknown Page", context);

    return const Scaffold(
      body: Center(
          child: Text(
        "Unknown Route",
        style: TextStyle(fontSize: 50),
      )),
    );
  }
}
