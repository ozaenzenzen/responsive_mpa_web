import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return WebPageWidget.customScaffold(
      pageTitle: "Third Page",
      index: 3,
      backgroundDecoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      halfSizeScaffold: HalfSizeScaffoldPage(
        appBar: const AppBarMenu(
          appBarTitle: AppBarTitle.text(
            text: Text("Third Page"),
          ),
          // listMenu: listMenu,
        ),
        body: const Center(
          child: Text("Halaman Third"),
        ),
        drawer: Container(
          width: width * 0.4,
          color: Colors.blueGrey.shade300,
          child: ListView(
            children: ResponsiveMPAWebConfig.listMenu,
          ),
        ),
        typeDrawer: TypeDrawer.endDrawer,
      ),
      fullSizeScaffold: const FullSizeScaffoldPage(
        appBar: AppBarMenu(
          appBarTitle: AppBarTitle.text(
            text: Text("Third Page"),
          ),
          // listMenu: listMenu,
        ),
        body: Center(
          child: Text("Halaman Third"),
        ),
      ),
    );
  }
}
