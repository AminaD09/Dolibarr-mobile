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
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
            )
          ],
        ),
        drawer: const SideMenu(),
        body: const HomeTiers());
  }
}
