import 'package:dolibarr_app/Users/Model.dart';
import 'package:dolibarr_app/contacts/SetContacts/Model.dart';
import 'package:dolibarr_app/dashboard/side_menu.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import './NewContac.dart';
import 'SetContacts/AddContact.dart';
import 'SetContacts/HomeContact.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Définition des données de la liste
  static const List<String> _listData = [
    'Nouveau Contact/Adresse',
    'Liste',
  ];

  // Définition des sous-listes pour chaque élément de la liste
  static const Map<String, List<String>> _sublistData = {
    'Liste': [
      'Prospects',
      'Clients',
      'Fournisseurs',
      'Tous',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kDarkBlue,
        title: const Text('Contacts'),
      ),
      endDrawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: _listData.map((data) {
            return _sublistData.containsKey(data)
                ? ExpansionTile(
                    title: Text(data),
                    children: _sublistData[data]!
                        .map(
                          (subdata) => InkWell(
                            onTap: () {
                              // Redirige vers une autre page en fonction de l'élément de la sous-liste choisi
                              switch (subdata) {
                                case 'Prospects':
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()),
                                  );
                                  break;
                                case 'Clients':
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()),
                                  );
                                  break;
                                case 'Fournisseurs':
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()),
                                  );
                                  break;
                                case 'Tous':
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeContact()),
                                  );
                                  break;
                                default:
                                  // Le cas "Autre" n'est pas traité
                                  break;
                              }
                            },
                            child: ListTile(title: Text(subdata)),
                          ),
                        )
                        .toList(),
                  )
                : InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateContactForm()),
                      );
                    },
                    child: ListTile(title: Text(data)),
                  );
          }).toList(),
        ),
      ),
    );
  }
}
