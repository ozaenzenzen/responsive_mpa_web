part of 'appbar_menu_old.dart';

class FullSizeAppBarMenu extends StatefulWidget {
  final int currentIndex;
  final List<Widget> listMenu;

  const FullSizeAppBarMenu({
    Key? key,
    required this.currentIndex,
    required this.listMenu,
  }) : super(key: key);

  @override
  _FullSizeAppBarMenuState createState() => _FullSizeAppBarMenuState();
}

class _FullSizeAppBarMenuState extends State<FullSizeAppBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widget.listMenu,
      ),
    );
  }
}
