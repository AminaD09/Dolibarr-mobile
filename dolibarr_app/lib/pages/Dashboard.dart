// ignore_for_file: file_names

import 'package:dolibarr_app/main.dart';
//import 'package:dolibarr_app/pages/auth/loginScreen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import "package:flutter_session_manager/flutter_session_manager.dart";

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: const Text("Dashboard"),
      //),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('hello user!'),
            FutureBuilder(
              future: SessionManager().get('token'),
              builder: (context, snapshot) {
                return Text(snapshot.hasData ? snapshot.data : 'load..');
              },
            ),
            const LogoutButton(),
          ],
        ),
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          SessionManager().set('token', "");
          SessionManager().set('isLogin', false);
          SessionManager().destroy();
          //SystemNavigator.pop();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const MyApp()));
        },
        child: const Text("Déconnexion"),
      ),
    );
  }
}
