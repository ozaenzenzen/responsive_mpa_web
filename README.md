# responsive_mpa_web

Flutter plugin for responsive web application with Multi Page Application experience.

## Usage/Examples

How to use `responsive_mpa_web` package

You should create `ResponsiveMPAWeb` inside `MaterialApp` to define list of menu in appBar
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
      home: ResponsiveMPAWeb(
        listMenu: [
          AppBarMenuButton(
            menuText: const Text("Menu 1"),
            // currentIndex: 1,
            indexPage: 1,
            onTap: (context) {
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
            // currentIndex: 2,
            indexPage: 2,
            onTap: (context) {
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
            // currentIndex: 3,
            indexPage: 3,
            onTap: (context) {
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
        child: const HomePage(),
      ),
    );
  }
}

```
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

