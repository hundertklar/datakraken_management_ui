import 'package:flutter/material.dart';
import 'package:datakraken_0_1/drawer.dart';

class Login extends StatelessWidget {
  static const String routeName = '/Login';
  final loginAction;
  final String loginError;

  const Login(this.loginAction, this.loginError);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text('Login')));
  }
  }
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//        RaisedButton(
    //         onPressed: () {
//           loginAction();
    //         },
    //         child: Text('Login'),
//        ),
    //       Text(loginError ?? ''),
    //     ],
//    );
//  }
//}
