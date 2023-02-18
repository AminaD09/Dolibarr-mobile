import 'package:dolibarr_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../dashboard/side_menu.dart';
import 'Model.dart';
import 'Back.dart';
import 'homeList.dart';

class Update extends StatefulWidget {
  final User user;

  const Update({super.key, required this.user});

  @override
  // ignore: library_private_types_in_public_api
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  final _formKey = GlobalKey<FormState>();
  late Adduser Uuser = Adduser(
      lastname: widget.user.lastname,
      firstname: widget.user.firstname,
      login: widget.user.login,
      email: '@',
      password: 'passer123456',
      gender: 'other',
      admin: '0',
      job: 'employé',
      address: 'null',
      salary: '0',
      userMobile: '0',
      weeklyhours: '0');

  @override
  void initState() {
    super.initState();
    Uuser.firstname = widget.user.firstname;
    Uuser.lastname = widget.user.lastname;
    Uuser.email = (widget.user.email ?? "@");
    Uuser.gender = (widget.user.gender ?? "other");
    Uuser.admin = (widget.user.admin ?? "0");
    Uuser.salary = (widget.user.salary ?? "0");
    Uuser.job = (widget.user.job ?? "employé");
    Uuser.userMobile = (widget.user.userMobile ?? "0");
    Uuser.weeklyhours = (widget.user.weeklyhours ?? "0");
    Uuser.password = (" ");
    Uuser.address = (widget.user.address ?? "0");
    Uuser.login = widget.user.login;
  }

  Future<void> _UpdateUser(Adduser user, String id) async {
    var response = await updateUser(id, user);
    if (response == 200) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeUser()))
          .then((value) => {
                Fluttertoast.showToast(
                  msg: 'Modification réussi!',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 2,
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
        title: const Text('Modifier l\'utilisateur'),
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
                        initialValue: widget.user.lastname,
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
                        onSaved: (value) {
                          Uuser.lastname = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        initialValue: widget.user.firstname,
                        decoration: const InputDecoration(
                          labelText: 'Prénom',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Veuillez saisir votre prénom';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          Uuser.firstname = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        initialValue: widget.user.login,
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
                        onSaved: (value) {
                          Uuser.login = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        initialValue: widget.user.email,
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
                        onSaved: (value) {
                          Uuser.email = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        initialValue: " ",
                        decoration: const InputDecoration(
                          labelText: 'Mot de passe',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                        onSaved: (value) {
                          if (value != " ") Uuser.password = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          labelText: 'Genre',
                          border: OutlineInputBorder(),
                        ),
                        value: widget.user.gender ??
                            'other', // sélection par défaut
                        onChanged: (newValue) {
                          setState(() {
                            widget.user.gender = newValue.toString();
                            Uuser.gender = newValue.toString();
                          });
                        },
                        items: ['man', 'woman', 'other'].map((gender) {
                          return DropdownMenuItem<String>(
                            value: gender,
                            child: Text(gender),
                          );
                        }).toList(),

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
                            value: widget.user.admin == "1",
                            onChanged: (value) {
                              setState(() {
                                Uuser.admin = value.toString();
                              });
                            },
                          ),
                          const Text('Administrateur'),
                        ],
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        initialValue: widget.user.job,
                        decoration: const InputDecoration(
                          labelText: 'Poste',
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (value) {
                          Uuser.job = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        initialValue: widget.user.address,
                        decoration: const InputDecoration(
                          labelText: 'Adresse',
                          border: OutlineInputBorder(),
                        ),
                        onSaved: (value) {
                          Uuser.address = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        initialValue: widget.user.salary,
                        decoration: const InputDecoration(
                          labelText: 'Salaire',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          Uuser.salary = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        initialValue: widget.user.userMobile,
                        decoration: const InputDecoration(
                          labelText: 'Téléphone portable',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.phone,
                        onSaved: (value) {
                          Uuser.userMobile = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        initialValue: widget.user.weeklyhours,
                        decoration: const InputDecoration(
                          labelText: 'Heures de travail par semaine',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          Uuser.weeklyhours = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  _UpdateUser(Uuser, widget.user.id);
                                }
                              },
                              child: const Text('Modifier'),
                            ),
                            const SizedBox(width: 16.0),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeUser()));
                              },
                              child: const Text('Annuler'),
                            ),
                          ],
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

  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}
