import 'package:dolibarr_app/constant.dart';
//import 'package:dolibarr_app/contacts/SetContacts/HomeContact.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import '../../dashboard/side_menu.dart';
//import './../../dashboard/side_menu.dart';
//import 'Model.dart';
//import 'back_end.dart';
//import 'HomeContact.dart';

class CreateContactForm extends StatefulWidget {
  const CreateContactForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CreateContactFormState createState() => _CreateContactFormState();
}

class _CreateContactFormState extends State<CreateContactForm> {
  final _formKey = GlobalKey<FormState>();

  //late AddContact newContact = AddContact(
  //lastname: "", firstname: "", email: "", address: "", phoneMobile: "");
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneMobileController = TextEditingController();
  /*Future<void> _addContact(AddContact newContact) async {
    AddContact newContact = AddContact(
        //lastname: _lastNameController.text,
        firstname: _firstNameController.text,
        email: _emailController.text,
        address: _addressController.text,
        phoneMobile: _phoneMobileController.text);
    var response = await AddContact(newContact,
        lastname: '', firstname: '', address: '', phoneMobile: '', email: '');
    if (response is int) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeContact()))
          .then((value) => {
                Fluttertoast.showToast(
                  msg: 'Le nouvel utilisateur a été créé avec succès.',
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
              MaterialPageRoute(builder: (context) => const HomeContact()))
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
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Nouveau Contact'),
        backgroundColor: Colors.blue,
      ),
      endDrawer: const SideMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            shadowColor: kDarkBlue,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.white],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _lastNameController,
                        decoration: const InputDecoration(
                          labelText: 'Nom',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez saisir votre nom';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _firstNameController,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          labelText: 'Prénom',
                          border: const OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez saisir votre prénom';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'E-mail',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez saisir une adresse e-mail';
                          } else if (!value.contains('@')) {
                            return 'Veuillez saisir une adresse e-mail valide';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _addressController,
                        decoration: const InputDecoration(
                          labelText: 'Adresse',
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (value) {
                          // newContact.address = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _phoneMobileController,
                        decoration: const InputDecoration(
                          labelText: 'Téléphone portable',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.phone,
                        onSaved: (value) {
                          //newContact.phoneMobile = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();

                              //_addContact(newContact);
                            }
                          },
                          child: const Text('Créer'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AddContact {
  AddContact(AddContact newContact,
      {required String lastname,
      required String firstname,
      required String email,
      required String address,
      required String phoneMobile});

  set phoneMobile(String phoneMobile) {}

  set address(String address) {}

  static fromJson(decode) {}
}
