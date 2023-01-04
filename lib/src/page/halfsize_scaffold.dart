part of 'web_page_widget.dart';

class HalfSizeScaffoldPage extends StatelessWidget {
  /// You can build drawer Widget with Container Widget. 
  /// Recommendation of the width size is using 
  /// `MediaQuery.of(context).size.width * 0.4`
  final Widget drawer;
  final TypeDrawer typeDrawer;
  final PreferredSizeWidget appBar;
  final Widget? body;

  const HalfSizeScaffoldPage({
    Key? key,
    required this.appBar,
    required this.drawer,
    this.typeDrawer = TypeDrawer.endDrawer,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (typeDrawer == TypeDrawer.drawer) {
      return Scaffold(
        drawer: drawer,
        backgroundColor: Colors.transparent,
        appBar: appBar,
        body: body,
      );
    } else {
      return Scaffold(
        endDrawer: drawer,
        backgroundColor: Colors.transparent,
        appBar: appBar,
        body: body,
      );
    }
  }
}
