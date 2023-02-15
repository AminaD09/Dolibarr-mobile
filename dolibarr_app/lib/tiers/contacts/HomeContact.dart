import 'package:dolibarr_app/dashboard/side_menu.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';
import './NewContac.dart';

class HomeContact extends StatelessWidget {
  const HomeContact({super.key});

  // Définition des données de la liste
  static const List<String> _listData = [
    'Nouveau Contact/Adresse',
    'Liste',
  ];

  // Définition des sous-listes pour chaque élément de la liste
  static const Map<String, List<String>> _sublistData = {
    /*'Nouveau Contact/Adresse': [
      'Sous-élément 1',
      'Sous-élément 2',
      'Sous-élément 3',
    ],*/
    'Liste': [
      'Prospects',
      'Clients',
      'Fournisseurs',
      'Autre',
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
                        .map((subdata) => ListTile(title: Text(subdata)))
                        .toList(),
                  )
                : InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewContact()),
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
