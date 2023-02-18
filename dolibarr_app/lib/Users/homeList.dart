import 'package:dolibarr_app/Users/Update.dart';
import 'package:flutter/material.dart';
import 'package:dolibarr_app/dashboard/side_menu.dart';
import 'Details.dart';
import 'Model.dart';
import 'Back.dart';
import 'New_user.dart';

class HomeUser extends StatelessWidget {
  const HomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste d\'utilisateurs'),
        backgroundColor: Colors.blue,
      ),
      endDrawer: const SideMenu(),
      body: const Center(
        child: UsersList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateUserForm()),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _UsersListState();
  }
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
      future: fetchUsers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          List<User>? users = snapshot.data;
          return UserListWidget(userList: users);
        } else {
          return const Center(
            child: Text('Erreur lors de la récupération des utilisateurs.'),
          );
        }
      },
    );
  }
}

class UserListWidget extends StatelessWidget {
  final List<User>? userList;

  const UserListWidget({super.key, required this.userList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: userList?.length,
        itemBuilder: (BuildContext context, int index) {
          final user = userList![index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(
              "${user.firstname} ${user.lastname}",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
            subtitle: Text("${user.login}  ${user.email}"),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Update(user: user),
                    ));
              },
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserDetailsPage(user: user),
                  ));
            },
          );
        },
      ),
    ));
  }
}
