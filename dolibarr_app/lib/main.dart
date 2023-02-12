import 'package:dolibarr_app/pages/Dashboard.dart';

import 'package:dolibarr_app/pages/welcomeScreen.dart';
import 'package:flutter/material.dart';
import "package:flutter_session_manager/flutter_session_manager.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => FutureBuilder(
      future: SessionManager().get('token'),
      builder: (context, snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: (snapshot.hasData &&
                  (snapshot.data.toString().isNotEmpty ||
                      snapshot.data.toString() != ""))
              ? const Dashboard()
              : const welcomeScreen(),
        );
      });
}
