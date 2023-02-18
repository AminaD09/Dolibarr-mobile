import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../dashboard/side_menu.dart';

class NewContact extends StatefulWidget {
  const NewContact({Key? key}) : super(key: key);

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  // ignore: non_constant_identifier_names
  TextEditingController FirstName = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController SecondName = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Adress = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController PhoneNumber = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController eMail = TextEditingController();

  get products => null;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kDarkBlue,
        title: const Text('Nouveau Contact'),
      ),
      endDrawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              controller: FirstName,
              maxLength: 20,
              decoration: const InputDecoration(
                  hintText: 'Nom',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ))),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: SecondName,
              //keyboardType: TextInputType.number,
              maxLength: 20,
              decoration: const InputDecoration(
                  hintText: 'Prénom',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ))),
            ),
            //const SizedBox(height: 10),
            const SizedBox(height: 10),
            TextField(
              controller: Adress,
              maxLength: 50,
              decoration: const InputDecoration(
                  hintText: 'Adresse',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ))),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: PhoneNumber,
              keyboardType: TextInputType.number,
              maxLength: 20,
              decoration: const InputDecoration(
                  hintText: 'Téléphone',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ))),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: eMail,
              //keyboardType: TextInputType.number,
              maxLength: 20,
              decoration: const InputDecoration(
                  hintText: 'eMail',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
