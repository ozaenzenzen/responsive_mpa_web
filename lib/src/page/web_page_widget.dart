import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

part 'fullsize_scaffold.dart';
part 'halfsize_scaffold.dart';

/// [WebPageWidget] is a main widget of this plugin. This widget have a purpose to create
/// web page view.
///
/// Example:
/// ```dart
/// WebPageWidget(
///   pageTitle: "Home Page",
///   backgroundDecoration: BoxDecoration(
///     color: Colors.blueGrey,
///   ),
///   appBar: AppBarMenuV2(
///     appBarMenuTitle: const AppBarTitle.text(
///       text: Text("Home Page"),
///     ),
///     listMenu: listMenu,
///     onTapToHomePage: () {},
///   ),
///   bodyOnFullSize: const Center(
///     child: Text("Home Page"),
///   ),
///   bodyOnHalfSize: const Center(
///     child: Text("Home Page"),
///   ),
///   drawer: Container(
///     width: width * 0.4,
///     color: Colors.blueGrey.shade300,
///     child: ListView(
///       children: listMenu,
///     ),
///   ),
/// );
/// ```
///
/// or use custom scaffold:
///
/// ```dart
/// WebPageWidget.customScaffold(
///   pageTitle: "Home Page",
///   backgroundDecoration: BoxDecoration(
///     color: Colors.blueGrey,
///   ),
///   halfSizeScaffold: HalfSizeScaffoldPage(
///     appBar: AppBarMenuV2(
///       appBarMenuTitle: const AppBarTitle.text(
///         text: Text("Home Page"),
///       ),
///       listMenu: listMenu,
///     ),
///     body: Container(),
///     drawer: DrawYourDrawer(),
///     typeDrawer: TypeDrawer.endDrawer,
///   ),
///   fullSizeScaffold: FullSizeScaffoldPage(
///     appBar: AppBarMenuV2(
///       appBarMenuTitle: const AppBarTitle.text(
///         text: Text("Home Page"),
///       ),
///       listMenu: listMenu,
///     ),
///     body: Container(),
///   ),
/// );
/// ```
class WebPageWidget extends StatefulWidget {
  final String pageTitle;
  final int index;
  final HalfSizeScaffoldPage? halfSizeScaffold;
  final FullSizeScaffoldPage? fullSizeScaffold;

  /// You can build your own [PreferredSizeWidget] or use [AppBarMenuV2]
  /// widget from this `responsive_mpa_web` plugin
  final PreferredSizeWidget? appBar;
  final Widget? drawer;

  /// Define [TypeDrawer] to choose where the drawer appears. You can choose
  /// [TypeDrawer.drawer] or [TypeDrawer.endDrawer]
  final TypeDrawer? typeDrawer;

  /// Body content of web when device on full size or above 1100 pixels
  final Widget? bodyOnFullSize;

  /// Body content of web when device on half size or below 1100 pixels
  final Widget? bodyOnHalfSize;
  final BoxDecoration? backgroundDecoration;
  final bool useCustomScaffold;
  final double responsiveBounds;

  const WebPageWidget({
    Key? key,
    required this.pageTitle,
    required this.index,
    required this.appBar,
    required this.bodyOnFullSize,
    required this.bodyOnHalfSize,
    required this.drawer,
    this.typeDrawer = TypeDrawer.endDrawer,
    this.responsiveBounds = 1100,
    this.backgroundDecoration,
  })  : halfSizeScaffold = null,
        fullSizeScaffold = null,
        useCustomScaffold = false,
        super(key: key);

  /// Customize scaffold for full size and half size
  const WebPageWidget.customScaffold({
    Key? key,
    required this.pageTitle,
    required this.index,
    required this.halfSizeScaffold,
    required this.fullSizeScaffold,
    this.responsiveBounds = 1100,
    this.backgroundDecoration,
  })  : appBar = null,
        bodyOnFullSize = null,
        bodyOnHalfSize = null,
        drawer = null,
        typeDrawer = null,
        useCustomScaffold = true,
        super(key: key);

  @override
  State<WebPageWidget> createState() => _WebPageWidgetState();
}

class _WebPageWidgetState extends State<WebPageWidget> {
  @override
  Widget build(BuildContext context) {
    ResponsiveMPAWebConfig.activeIndex = widget.index;
    double width = MediaQuery.of(context).size.width;
    FunctionHelper.setPageTitle(widget.pageTitle, context);

    return Stack(
      children: [
        Container(
          decoration: widget.backgroundDecoration,
        ),
        (widget.useCustomScaffold)
            ? (width < widget.responsiveBounds)
                ? widget.halfSizeScaffold!
                : widget.fullSizeScaffold!
            : (width < widget.responsiveBounds)
                ? HalfSizeScaffoldPage(
                    appBar: widget.appBar!,
                    drawer: widget.drawer!,
                    typeDrawer: widget.typeDrawer!,
                    body: widget.bodyOnHalfSize,
                  )
                : FullSizeScaffoldPage(
                    appBar: widget.appBar!,
                    body: widget.bodyOnFullSize,
                  ),
      ],
    );
  }
}
