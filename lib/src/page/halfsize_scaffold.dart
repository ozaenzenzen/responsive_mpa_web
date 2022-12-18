part of 'page.dart';

class HalfSizeScaffoldPage extends StatelessWidget {
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
    return Scaffold(
      drawer: (typeDrawer == TypeDrawer.drawer) ? drawer : null,
      endDrawer: (typeDrawer == TypeDrawer.endDrawer) ? drawer : null,
      backgroundColor: Colors.transparent,
      appBar: appBar,
      body: body,
    );
  }
}
