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
    // List<Widget> listMenu = [
    //   AppBarMenuButton(
    //     menuText: const Text("Menu 1"),
    //     currentIndex: currentIndex,
    //     pageIndex: 1,
    //     onTap: (context) {
    //       Navigator.push(
    //         context,
    //         FadeInRoute(
    //           page: const HomePage(),
    //           routeName: '/home',
    //         ),
    //       );
    //     },
    //   ),
    //   const SizedBox(width: 20),
    //   AppBarMenuButton(
    //     menuText: const Text("Menu 2"),
    //     currentIndex: currentIndex,
    //     pageIndex: 2,
    //     onTap: (context) {
    //       Navigator.push(
    //         context,
    //         FadeInRoute(
    //           page: const SecondPage(),
    //           routeName: '/secondpage',
    //         ),
    //       );
    //     },
    //   ),
    //   const SizedBox(width: 20),
    //   AppBarMenuButton(
    //     menuText: const Text("Menu 3"),
    //     currentIndex: currentIndex,
    //     pageIndex: 3,
    //     onTap: (context) {
    //       Navigator.push(
    //         context,
    //         FadeInRoute(
    //           page: const ThirdPage(),
    //           routeName: '/thirdpage',
    //         ),
    //       );
    //     },
    //   ),
    // ];
    // return WebPageWidget(
    //   pageTitle: "Second Page",
    //   backgroundDecoration: BoxDecoration(
    //     color: Colors.blueGrey,
    //   ),
    //   appBar: AppBarMenuV2(
    //     appBarMenuTitle: const AppBarMenuTitle.text(
    //       text: Text("Second Page"),
    //     ),
    //     listMenu: listMenu,
    //     onTapToHomePage: () {},
    //   ),
    //   bodyOnFullSize: const Center(
    //     child: Text("Halaman Second"),
    //   ),
    //   bodyOnHalfSize: const Center(
    //     child: Text("Halaman Second"),
    //   ),
    //   drawer: Container(
    //     width: width * 0.4,
    //     color: Colors.blueGrey.shade300,
    //     child: ListView(
    //       children: listMenu,
    //     ),
    //   ),
    // );
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
