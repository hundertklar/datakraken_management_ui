import 'package:datakraken_0_1/loginScreen.dart';
import 'package:datakraken_0_1/constants.dart';
import 'package:datakraken_0_1/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:datakraken_0_1/routes.dart';

//class ButtonsInfo {
//  String title;
// IconData icon;
//
//  ButtonsInfo({required this.title, required this.icon});
//}

//class Task {
// String task;
// double taskValue;
// Color color;

//  Task({required this.task, required this.taskValue, required this.color});
//}

//int _currentIndex = 0;

//List<ButtonsInfo> _buttonNames = [
// ButtonsInfo(title: "Home", icon: Icons.home),
// ButtonsInfo(title: "Login", icon: Icons.login),
//  ButtonsInfo(title: "Settings", icon: Icons.settings),
//];

//class DrawerPage extends StatefulWidget {
// @override
// _DrawerPageState createState() => _DrawerPageState();
//}

//class _DrawerPageState extends State<DrawerPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Drawer(
//      elevation: 0,
//      child: SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(Constants.kPadding * 4),
//         child: Column(
//           children: [
//              ListTile(
//               title: Text(
//                  "Menu",
//                 style: TextStyle(
//                   color: Colors.white,
//                  ),
//               ),
//                trailing: !ResponsiveLayout.isComputer(context)
//                    ? IconButton(
//                        onPressed: () {
//                         Navigator.of(context).push(
//                            MaterialPageRoute(
//                             builder: (_) {
//                               return Login('test', 'error');
//                             },
//                           ),
//                         );
//                       },
//                       icon: Icon(Icons.close, color: Colors.white),
//                     )
//                    : null,
//             ),
//             ...List.generate(
//               _buttonNames.length,
//               (index) => Column(
//                  children: [
//                    Container(
//                      decoration: index == _currentIndex
//                         ? BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                               colors: [
//                                Colors.blue,
//                                 Colors.lightBlue,
//                               ],
//                             ),
//                            )
//                         : null,
//                     child: ListTile(
//                       title: Text(
//                         _buttonNames[index].title,
//                          style: TextStyle(
//                            color: Colors.white,
//                         ),
//                       ),
//                       leading: Padding(
//                         padding: const EdgeInsets.all(Constants.kPadding),
//                         child: Icon(
//                           _buttonNames[index].icon,
//                           color: Colors.white,
//                        ),
//                      ),
//                       onTap: () {
//                          setState(() {
//                          _currentIndex = index;
//                         });
//                      },
//                      shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.white,
//                     thickness: 0.1,
//                   ),
//                 ],
//                ),
//             ),
//           ],
//         ),
//        ),
//      ),
//    );
//  }
//}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      _createHeader(),
      _createDrawerItem(
        icon: Icons.login,
        text: 'login',
        onTap: () =>
            Navigator.pushNamed(context, Routes.login)
      ),
      ListTile(
        title: Text('0.0.1'),
        onTap: () {},
      )
    ]));
  }
}

Widget _createHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('android/app/src/main/res/DrawerIMG.png'),
      ),
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text(
            'Flutter Drawer Test',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ),
  );
}

Widget _createDrawerItem(
    {required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
