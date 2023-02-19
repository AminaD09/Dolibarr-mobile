import 'package:dolibarr_app/Users/Back.dart';
//import 'package:dolibarr_app/Users/homeList.dart';
import 'package:dolibarr_app/contacts/SetContacts/HomeContact.dart';
import 'package:flutter/material.dart';
import 'package:dolibarr_app/dashboard/side_menu.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Model.dart';

class FormatContact extends StatelessWidget {
  final Contact contact;

  const FormatContact({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fiche Sommaire du contact'),
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
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Nom complet : ${contact.firstname} ${contact.lastname}',
                      ),
                      const Divider(),
                      Text(
                        'Email: ${contact.email}',
                      ),
                      const Divider(),
                      Text(
                        'Téléphone: ${contact.phoneMobile.toString()}',
                      ),
                      const Divider(),
                      Text(
                        'Adresse: ${contact.address}',
                      ),
                      const Divider(),
                      ElevatedButton(
                        onPressed: () {
                          delete(contact.id).toString();

                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeContact())).then((value) => {
                                Fluttertoast.showToast(
                                  msg: 'Le contact a bien été supprimé!',
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
