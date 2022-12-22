import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return WebPageWidget(
      pageTitle: "Second Page",
      index: 2,
      backgroundDecoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      appBar: AppBarMenu(
        appBarTitle: const AppBarTitle.text(
          text: Text("Second Page"),
        ),
        // listMenu: listMenu,
        onTapToHomePage: () {},
      ),
      bodyOnFullSize: const Center(
        child: Text("Halaman Second"),
      ),
      bodyOnHalfSize: const Center(
        child: Text("Halaman Second"),
      ),
      drawer: Container(
        width: width * 0.4,
        color: Colors.blueGrey.shade300,
        child: ListView(
          children: ResponsiveMPAWebConfig.listMenu,
        ),
      ),
    );
  }
}
