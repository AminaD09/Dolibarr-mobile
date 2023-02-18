import 'package:dolibarr_app/Users/Back.dart';
import 'package:dolibarr_app/Users/homeList.dart';
import 'package:flutter/material.dart';
import 'package:dolibarr_app/dashboard/side_menu.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Model.dart';

class UserDetailsPage extends StatelessWidget {
  final User user;

  const UserDetailsPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fiche Sommaire de l\'utilisateur'),
          backgroundColor: Colors.blue,
        ),
        endDrawer: const SideMenu(),
        body: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  user.gender == "woman"
                      ? 'images/femme.png'
                      : 'images/homme.png',
                  width: 100,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Nom complet : ${user.firstname} ${user.lastname}',
                      ),
                      const Divider(),
                      Text(
                        'Identifiant: ${user.login}',
                      ),
                      const Divider(),
                      Text(
                        'Email: ${user.email}',
                      ),
                      const Divider(),
                      Text(
                        'Genre: ${user.gender}',
                      ),
                      const Divider(),
                      Text(
                        user.admin == "1" ? 'Admin: OUI' : 'Admin:Non',
                      ),
                      const Divider(),
                      Text(
                        'Poste/fonction : ${user.job}',
                      ),
                      const Divider(),
                      Text(
                        'Heure de travail : ${user.weeklyhours.toString()}',
                      ),
                      const Divider(),
                      Text(
                        'Salaire: ${user.salary.toString()}',
                      ),
                      const Divider(),
                      Text(
                        'Adresse: ${user.address}',
                      ),
                      Text(
                        // ignore: unrelated_type_equality_checks
                        user.statut == "1"
                            ? 'Statut compte:Actif'
                            : 'Statut compte: non ctif',
                      ),
                      const Divider(),
                      ElevatedButton(
                        onPressed: () {
                          delete(user.id).toString();

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeUser())).then((value) => {
                                Fluttertoast.showToast(
                                  msg: 'L\'utilisateur a bien été supprimé!',
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey,
                                  textColor: Colors.white,
                                )
                              });
                        },
                        child: const Text('Supprimer'),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
