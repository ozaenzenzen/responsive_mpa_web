// part of 'page.dart';

// class ScaffoldPage extends StatelessWidget {
//   final PreferredSizeWidget appBar;
//   final Widget? bodyPageContent;
//   final Widget drawer;
//   final TypeDrawer typeDrawer;

//   const ScaffoldPage({
//     Key? key,
//     required this.appBar,
//     this.bodyPageContent,
//     required this.drawer,
//     this.typeDrawer = TypeDrawer.endDrawer,
//   }) : super(key: key);

//   const ScaffoldPage.halfSizePage({
//     Key? key,
//     required this.appBar,
//     this.bodyPageContent,
//     // required this.drawer,
//     this.typeDrawer = TypeDrawer.endDrawer,
//     this.drawer = const SizedBox(),
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: (typeDrawer == TypeDrawer.drawer) ? drawer : null,
//       endDrawer: (typeDrawer == TypeDrawer.endDrawer) ? drawer : null,
//       backgroundColor: Colors.transparent,
//       appBar: appBar,
//       body: bodyPageContent,
//     );
//   }
// }
