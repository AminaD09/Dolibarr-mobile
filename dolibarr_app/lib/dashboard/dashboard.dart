import 'package:dolibarr_app/dashboard/side_menu.dart';
import 'package:flutter/material.dart';
import "package:flutter_session_manager/flutter_session_manager.dart";

import '../constant.dart';
import '../widgets/courses_grid.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(children: [
                FutureBuilder(
                  future: SessionManager().get('name'),
                  builder: (context, snapshot) {
                    return Text(
                      snapshot.hasData
                          // ignore: prefer_interpolation_to_compose_strings
                          ? "Hello " +
                              snapshot.data.toString().toUpperCase() +
                              ", welcome back!"
                          : 'Not connected',
                      style: const TextStyle(color: kDarkBlue, fontSize: 20),
                    );
                  },
                ),
              ]),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Modules",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: kDarkBlue),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CourseGrid(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
