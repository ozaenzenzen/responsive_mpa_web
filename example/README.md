# responsive_mpa_web

Flutter plugin for responsive web application with Multi Page Application experience.

## Usage/Examples

How to use `responsive_mpa_web` package

You should create `WebPageView` as the first screen of the `MaterialApp` to define list of menu in appBar and pages of the app.

First you should create MaterialApp widget.  
Example as below:
```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: (settings) {
        if (settings.name == "/home") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const HomePage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        if (settings.name == "/secondpage") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const SecondPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        if (settings.name == "/thirdpage") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const ThirdPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        return null;
      },
      onUnknownRoute: (settings) {
        return PageRouteBuilder(
          settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
          pageBuilder: (_, __, ___) => const UnknownPage(),
          transitionsBuilder: (_, a, __, c) => FadeTransition(
            opacity: a,
            child: c,
          ),
        );
      },
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/secondpage': (context) => const SecondPage(),
        '/thirdpage': (context) => const ThirdPage(),
        '/404': (context) => const UnknownPage(),
      },
    );
  }
}

```
How to use `WebPageView` widget.
```dart
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WebPageView(
      listMenuBar: <AppBarMenuButton>[
        AppBarMenuButton(
          menuText: const Text("Menu 1"),
          pageTitle: "Home Page",
          indexPage: 1,
          onTap: () {
            Navigator.push(
              context,
              FadeInRoute(
                page: const HomePage(),
                routeName: '/home',
              ),
            );
          },
        ),
        AppBarMenuButton(
          menuText: const Text("Menu 2"),
          indexPage: 2,
          pageTitle: "Second Page",
          onTap: () {
            Navigator.push(
              context,
              FadeInRoute(
                page: const SecondPage(),
                routeName: '/secondpage',
              ),
            );
          },
        ),
        AppBarMenuButton(
          menuText: const Text("Menu 3"),
          indexPage: 3,
          pageTitle: "Third Page",
          onTap: () {
            Navigator.push(
              context,
              FadeInRoute(
                page: const ThirdPage(),
                routeName: '/thirdpage',
              ),
            );
          },
        ),
      ],
      listWebPages: const [
        HomePage(),
        SecondPage(),
        ThirdPage(),
      ],
    );
  }
}
```
`WebPageWidget` is a widget to create a page of the app.

How to use `WebPageWidget`, `AppBarMenu` and `AppDrawer` class
```dart
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WebPageWidget(
      pageTitle: "Home Page",
      index: 1,
      backgroundDecoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      appBar: AppBarMenu(
        appBarTitle: const AppBarTitle.text(
          text: Text("Home Page"),
        ),
        onTapToHomePage: () {},
      ),
      bodyOnFullSize: const Center(
        child: Text("Home Page"),
      ),
      bodyOnHalfSize: const Center(
        child: Text("Home Page"),
      ),
      drawer: const AppDrawer(),
    );
  }
}

```

You can also use `WebPageWidget.customScaffold`, but you have to use `HalfSizeScaffoldPage` and `FullSizeScaffoldPage` widget

```dart
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
        ),
        body: const Center(
          child: Text("Halaman Third"),
        ),
        drawer: const AppDrawer(),
        typeDrawer: TypeDrawer.endDrawer,
      ),
      fullSizeScaffold: const FullSizeScaffoldPage(
        appBar: AppBarMenu(
          appBarTitle: AppBarTitle.text(
            text: Text("Third Page"),
          ),
        ),
        body: Center(
          child: Text("Halaman Third"),
        ),
      ),
    );
  }
}
```