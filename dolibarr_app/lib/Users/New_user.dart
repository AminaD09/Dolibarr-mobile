import 'package:dolibarr_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../dashboard/side_menu.dart';
import 'Model.dart';
import 'Back.dart';
import 'homeList.dart';

class CreateUserForm extends StatefulWidget {
  const CreateUserForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CreateUserFormState createState() => _CreateUserFormState();
}

class _CreateUserFormState extends State<CreateUserForm> {
  final _formKey = GlobalKey<FormState>();

  late Adduser newUser = Adduser(
      lastname: "",
      firstname: "",
      login: "",
      email: "",
      password: "",
      gender: "",
      admin: "0",
      job: "",
      address: "",
      salary: "",
      userMobile: "",
      weeklyhours: "");
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _loginController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late var _genderController = TextEditingController();
  var _adminController = TextEditingController();
  final _jobController = TextEditingController();
  final _salaryController = TextEditingController();
  final _addressController = TextEditingController();
  final _userMobileController = TextEditingController();
  final _weeklyhoursController = TextEditingController();
  Future<void> _addUser(Adduser newUser) async {
    Adduser newUser = Adduser(
        lastname: _lastNameController.text,
        firstname: _firstNameController.text,
        login: _loginController.text,
        email: _emailController.text,
        password: _passwordController.text,
        gender: _genderController.text,
        admin: _adminController.text,
        job: _jobController.text,
        address: _addressController.text,
        salary: _salaryController.text,
        userMobile: _userMobileController.text,
        weeklyhours: _weeklyhoursController.text);
    var response = await addUser(newUser);
    if (response is int) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeUser()))
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
              MaterialPageRoute(builder: (context) => const HomeUser()))
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nouvel utilisateur'),
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
                      /*Text(
                        'Créer un nouvel utilisateur',
                        style: Theme.of(context).textTheme.headline6,
                      ),*/
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
                        controller: _loginController,
                        decoration: const InputDecoration(
                          labelText: 'Nom d\'utilisateur',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez saisir un nom d\'utilisateur';
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
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: 'Mot de passe',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez saisir un mot de passe';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          labelText: 'Genre',
                          border: OutlineInputBorder(),
                        ),
                        items: ['man', 'woman'].map((gender) {
                          return DropdownMenuItem<String>(
                            value: gender,
                            child: Text(gender),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            newUser.gender = value.toString();
                            _genderController.text = value.toString();
                            print(_genderController);
                            print(newUser.gender);
                          });
                        },
                        validator: (value) {
                          if (value == null) {
                            return 'Veuillez choisir un genre';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Checkbox(
                            value: newUser.admin == "1",
                            onChanged: (value) {
                              setState(() {
                                value == true
                                    ? newUser.admin = "1"
                                    : newUser.admin = "0";
                                _adminController.text = newUser.admin;
                                print(_adminController.text);
                              });
                            },
                          ),
                          const Text('Administrateur'),
                        ],
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _jobController,
                        decoration: const InputDecoration(
                          labelText: 'Poste',
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (value) {
                          newUser.job = value!;
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
                          newUser.address = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _salaryController,
                        decoration: const InputDecoration(
                          labelText: 'Salaire',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          newUser.salary = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _userMobileController,
                        decoration: const InputDecoration(
                          labelText: 'Téléphone portable',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.phone,
                        onSaved: (value) {
                          newUser.userMobile = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _weeklyhoursController,
                        decoration: const InputDecoration(
                          labelText: 'Heures de travail par semaine',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          newUser.weeklyhours = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();

                              _addUser(newUser);
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
