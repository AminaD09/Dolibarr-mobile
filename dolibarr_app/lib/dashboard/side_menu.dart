import 'package:dolibarr_app/main.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import "package:flutter_session_manager/flutter_session_manager.dart";

import '../../constant.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
                child: Image.asset(
              "images/bar.png",
            )),
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.home_2,
            title: "Home",
            onTap: () {},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.menu,
            title: "Modules",
            onTap: () {},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.folder,
            title: "Product",
            onTap: () {},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.chat,
            title: "Configuration",
            onTap: () {},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.settings,
            title: "Settings",
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "images/help.png",
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
                color: kLightBlue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Your token:",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                FutureBuilder(
                  future: SessionManager().get('token'),
                  builder: (context, snapshot) {
                    return Text(snapshot.hasData ? snapshot.data : 'load..');
                  },
                ),
              ],
            ),
          ),
          const LogoutButton(),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        SessionManager().set('token', "");
        SessionManager().set('isLogin', false);
        SessionManager().destroy();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const MyApp()));
      },
      child: const Text("Déconnexion"),
    );
  }
}
