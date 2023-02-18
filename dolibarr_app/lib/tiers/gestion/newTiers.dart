import 'package:dolibarr_app/tiers/gestion/ModelTiers.dart';
import 'package:dolibarr_app/tiers/gestion/allTiers.dart';
import 'package:dolibarr_app/tiers/gestion/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TiersForm extends StatefulWidget {
  const TiersForm({super.key});

  @override
  _TiersFormState createState() => _TiersFormState();
}

class _TiersFormState extends State<TiersForm> {
  late Addtier newTier = Addtier(
    name: "",
    address: "",
    phone: "",
    email: "",
    client: "",
    fournisseur: "",
  );

  final _name = TextEditingController();
  final _adress = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  final _client = TextEditingController();
  final _fournisseur = TextEditingController();

  Future<void> _addTier() async {
    Addtier newTier = Addtier(
      name: _name.text,
      address: _adress.text,
      phone: _phone.text,
      email: _email.text,
      client: _client.text,
      fournisseur: _fournisseur.text,
    );
    var response = await addTier(newTier);
    if (response is int) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const AllTiersPage()))
          .then((value) => {
                Fluttertoast.showToast(
                  msg: 'Le nouvel tier a été créé avec succès.',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                )
              });
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const AllTiersPage()))
          .then((value) => {
                Fluttertoast.showToast(
                  msg: 'un probleme est survenue veuillez reessayer .',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                )
              });
    }
  }

  final _formKey = GlobalKey<FormState>();
  String nom = '';
  String typeTiers = 'Client';
  String adresse = '';
  String telephone = '';
  String pays = '';

  final List<String> typeTiersList = [
    'Client',
    'Prospect',
    'Client/ Prospect',
    'Ni Client / Ni prospect',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un tiers'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _name,
                decoration: InputDecoration(labelText: 'Nom des tiers'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un nom';
                  }
                  return null;
                },
                onSaved: (value) {
                  nom = value!;
                },
              ),
              DropdownButtonFormField(
                value: typeTiers,
                items: typeTiersList
                    .map((type) => DropdownMenuItem(
                          child: Text(type),
                          value: type,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    typeTiers = value.toString();
                  });
                },
              ),
              TextFormField(
                controller: _adress,
                decoration: InputDecoration(labelText: 'Adresse'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une adresse';
                  }
                  return null;
                },
                onSaved: (value) {
                  adresse = value!;
                },
              ),
              TextFormField(
                controller: _phone,
                decoration: InputDecoration(labelText: 'Téléphone'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un numéro de téléphone';
                  }
                  return null;
                },
                onSaved: (value) {
                  telephone = value!;
                },
              ),
              TextFormField(
                controller: _email,
                decoration: InputDecoration(labelText: 'Mail'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un mail';
                  }
                  return null;
                },
                onSaved: (value) {
                  pays = value!;
                },
              ),
              Checkbox(
                value: newTier.fournisseur == '1',
                onChanged: (value) {
                  setState(() {
                    newTier.fournisseur = value! ? '1' : '0';
                  });
                },
              ),
              const Text('Fournisseur'),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _addTier();
                  }
                },
                child: Text('Enregistrer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
