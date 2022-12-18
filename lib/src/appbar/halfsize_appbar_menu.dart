part of 'appbar_menu_old.dart';

class HalfSizeAppBarMenu extends StatefulWidget {
  final Color iconColor;
  final double iconSize;

  const HalfSizeAppBarMenu({
    Key? key,
    this.iconColor = Colors.black,
    this.iconSize = 35,
  }) : super(key: key);

  @override
  _HalfSizeAppBarMenuState createState() => _HalfSizeAppBarMenuState();
}

class _HalfSizeAppBarMenuState extends State<HalfSizeAppBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: (MediaQuery.of(context).size.width < 500) ? 40 : 80),
      child: IconButton(
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
        },
        padding: const EdgeInsets.all(0),
        icon: Icon(
          Icons.reorder,
          size: widget.iconSize,
          color: widget.iconColor,
        ),
      ),
    );
  }
}
