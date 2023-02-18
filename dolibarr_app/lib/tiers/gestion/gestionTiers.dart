import 'package:dolibarr_app/dashboard/side_menu.dart';
import 'package:dolibarr_app/tiers/gestion/allTiers.dart';
import 'package:dolibarr_app/tiers/gestion/newTiers.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';

class GestionTiers extends StatelessWidget {
  const GestionTiers({super.key});

  // Définition des données de la liste
  static const List<String> _listData = [
    'Nouveau Tiers',
    'Liste',
  ];

  // Définition des sous-listes pour chaque élément de la liste
  static const Map<String, List<String>> _sublistData = {
    'Liste': [
      'Liste des prospects',
      'Liste des clients',
      'Liste des fournisseurs',
    ],
  };

  static const Map<String, List<String>> _sublistData2 = {
    'Liste': [
      'Liste des prospects',
      'Liste des clients',
      'Liste des fournisseurs',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kDarkBlue,
        title: const Text('Tiers'),
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
                        MaterialPageRoute(builder: (context) => AllTiersPage()),
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
