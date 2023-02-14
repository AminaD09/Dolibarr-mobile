import 'package:dolibarr_app/dashboard/side_menu.dart';
import 'package:dolibarr_app/tiers/homeTiers.dart';
import 'package:flutter/material.dart';

class WelcomeTiers extends StatelessWidget {
  const WelcomeTiers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.grey, size: 28),
        ),
        endDrawer: const SideMenu(),
        body: const HomeTiers());
  }
}
