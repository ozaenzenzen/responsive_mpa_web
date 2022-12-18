part of 'page.dart';

class FullSizeScaffoldPage extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget? body;

  const FullSizeScaffoldPage({
    Key? key,
    required this.appBar,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: appBar,
      body: body,
    );
  }
}
