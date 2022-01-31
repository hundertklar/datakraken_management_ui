import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:datakraken_0_1/widgets/button_widget.dart';
import 'package:datakraken_0_1/widgets/navigation_drawer_widget.dart';
import 'package:datakraken_0_1/colors.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData( primarySwatch: PalisBlue,
                      canvasColor: BackgroundDarkTheme),
    home: MainPage(),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    // endDrawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text(MyApp.title),
    ),
    body: Builder(
      builder: (context) => Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 32),
        child:

        ButtonWidget(
          icon: Icons.open_in_new,
          text: 'Open Drawer',
          onClicked: () {
            Scaffold.of(context).openDrawer();
            // Scaffold.of(context).openEndDrawer();
          },
        ),
      ),
    ),
  );
}

//void main() {
//  runApp(MyApp());
//}

//class MyApp extends StatelessWidget {
//  @override
// Widget build(BuildContext context) {
//  return MaterialApp(
//     title: 'Admin Dashboard',
//     theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Constants.DarkGrey,
//        canvasColor: Colors.black38),
//      home: WidgetTree(),
//   );
//  }
//}
MaterialColor Palis = MaterialColor(0XFF2d4999, color);

Map<int, Color> color =
{
  50:Color.fromRGBO(4,131,184, .1),
  100:Color.fromRGBO(4,131,184, .2),
  200:Color.fromRGBO(4,131,184, .3),
  300:Color.fromRGBO(4,131,184, .4),
  400:Color.fromRGBO(4,131,184, .5),
  500:Color.fromRGBO(4,131,184, .6),
  600:Color.fromRGBO(4,131,184, .7),
  700:Color.fromRGBO(4,131,184, .8),
  800:Color.fromRGBO(4,131,184, .9),
  900:Color.fromRGBO(4,131,184, 1),
};