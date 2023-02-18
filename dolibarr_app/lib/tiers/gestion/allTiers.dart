import 'package:dolibarr_app/tiers/gestion/ModelTiers.dart';
import 'package:dolibarr_app/tiers/gestion/newTiers.dart';
import 'package:dolibarr_app/tiers/gestion/services.dart';
import 'package:flutter/material.dart';
import 'package:dolibarr_app/dashboard/side_menu.dart';

class AllTiersPage extends StatelessWidget {
  const AllTiersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des Tiers"),
        backgroundColor: Colors.blue,
      ),
      endDrawer: const SideMenu(),
      body: const Center(
        child: TiersList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TiersForm()),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TiersList extends StatefulWidget {
  const TiersList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TiersListState();
  }
}

class _TiersListState extends State<TiersList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Tiers>>(
      future: fetchTiers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          List<Tiers>? tiers = snapshot.data;
          return TierListWidget(tierList: tiers);
        } else {
          return const Center(
            child: Text('Erreur lors de la récupération des tiers.'),
          );
        }
      },
    );
  }
}

class TierListWidget extends StatelessWidget {
  final List<Tiers>? tierList;

  const TierListWidget({super.key, required this.tierList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: tierList?.length,
        itemBuilder: (BuildContext context, int index) {
          final tier = tierList![index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(
              tier.name,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
            subtitle: Text(tier.fournisseur == "0" ? "" : "Fournisseur"),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                // Action à effectuer lors du clic sur le bouton
              },
            ),
            onTap: () {
              /*
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserDetailsPage(user: user),
                  ));*/
            },
          );
        },
      ),
    ));
  }
}
