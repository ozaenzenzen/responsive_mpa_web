// import 'package:flutter/material.dart';
// import 'package:fzn_responsive_web/helper/enum_typedrawer.dart';
// import 'package:fzn_responsive_web/helper/function_helper.dart';

// import '../fzn_responsive_web.dart';

// // part 'fullsize_scaffold.dart';
// // part 'halfsize_scaffold.dart';
// // part 'scaffold_page.dart';

// class WebPageWidget2 extends StatefulWidget {
//   final String pageTitle;
//   final Widget halfSizeScaffold;
//   final Widget fullSizeScaffold;
//   final BoxDecoration? backgroundDecoration;
//   final List<Widget> listMenuFullSize;
//   final List<Widget> listMenuHalfSize;
//   final Function()? onTapToHomePage;
//   final int currentIndex;
//   final Color drawerColor;
//   final Color appBarIconColor;
//   final Widget? halfSizeContent;
//   final Widget? fullSizeContent;
//   final bool usingHalfSizeContent;

//   const WebPageWidget2({
//     Key? key,
//     required this.pageTitle,
//     required this.halfSizeScaffold,
//     required this.fullSizeScaffold,
//     this.backgroundDecoration,
//     this.listMenuFullSize = const [],
//     this.listMenuHalfSize = const [],
//     this.onTapToHomePage,
//     required this.currentIndex,
//     this.drawerColor = Colors.white,
//     this.appBarIconColor = Colors.black,
//     this.halfSizeContent,
//     this.fullSizeContent,
//     this.usingHalfSizeContent = false,
//   }) : super(key: key);

//   @override
//   State<WebPageWidget2> createState() => _WebPageWidget2State();
// }

// class _WebPageWidget2State extends State<WebPageWidget2> {
//   @override
//   Widget build(BuildContext context) {
//     Size pageSize = MediaQuery.of(context).size;
//     double width = MediaQuery.of(context).size.width;
//     FunctionHelper.functionHelper.setPageTitle(widget.pageTitle, context);

//     return Stack(
//       children: [
//         Container(
//           decoration: widget.backgroundDecoration,
//         ),
//         (width < 1100)
//             ? HalfSizeScaffoldPage(
//                 body: (widget.usingHalfSizeContent) ? widget.halfSizeContent : widget.fullSizeContent,
//                 // body: Center(
//                 //   child: Text("Halaman Home"),
//                 // ),
//                 // appBar: AppBarMenu.instance.appBar(
//                 //   currentSpace: width,
//                 //   currentIndex: widget.currentIndex,
//                 //   listMenu: widget.listMenuHalfSize,
//                 //   context: context,
//                 //   onTapToHomePage: widget.onTapToHomePage!,
//                 //   iconColor: widget.appBarIconColor,
//                 // ),
//                 appBar: AppBarTitle.text(
//                   text: const Text("home"),
//                 ),
//                 drawer: Container(
//                   width: width * 0.4,
//                   // color: Colors.blueGrey.shade300,
//                   color: widget.drawerColor,
//                   child: ListView(
//                     children: widget.listMenuHalfSize,
//                   ),
//                 ),
//               )
//             : FullSizeScaffoldPage(
//                 body: widget.fullSizeContent,
//                 // body: Center(
//                 //   child: Text("Halaman Home"),
//                 // ),
//                 // appBar: AppBarMenu.instance.appBar(
//                 //   currentSpace: width,
//                 //   currentIndex: widget.currentIndex,
//                 //   listMenu: widget.listMenuFullSize,
//                 //   context: context,
//                 //   onTapToHomePage: widget.onTapToHomePage!,
//                 // ),
//                 appBar: AppBarTitle.text(
//                   text: const Text("home"),
//                 ),
//               ),
//         // ? HalfSizeScaffoldPage(
//         //     appBar: widget.appBar,
//         //     drawer: drawer,
//         //   )
//         // : FullSizeScaffoldPage(
//         //     appBar: appBar,
//         //   ),
//       ],
//     );
//   }
// }
