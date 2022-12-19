import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int currentIndex = 2;

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
    // return WebPageWidget(
    //   pageTitle: "Second Page",
    //   backgroundDecoration: const BoxDecoration(
    //     color: Colors.blueGrey,
    //   ),
    //   fullSizeScaffold: FullSizeScaffoldPage(
    //     body: const Center(
    //       child: Text("Halaman Second"),
    //     ),
    //     appBar: AppBarMenuV2(
    //       appBarMenuTitle: const AppBarMenuTitle.text(
    //         text: Text("Second Page"),
    //       ),
    //       listMenu: listMenu,
    //       onTapToHomePage: () {},
    //     ),
    //   ),
    //   halfSizeScaffold: HalfSizeScaffoldPage(
    //     body: const Center(
    //       child: Text("Halaman Second"),
    //     ),
    //     appBar: AppBarMenuV2(
    //       appBarMenuTitle: const AppBarMenuTitle.text(
    //         text: Text("Second Page"),
    //       ),
    //       listMenu: listMenu,
    //       onTapToHomePage: () {},
    //     ),
    //     drawer: Container(
    //       width: width * 0.4,
    //       color: Colors.blueGrey.shade300,
    //       child: ListView(
    //         children: listMenu,
    //       ),
    //     ),
    //   ),
    // );
  }
}
