import 'package:dolibarr_app/contacts/SetContacts/format.dart';
import 'package:flutter/material.dart';
import 'package:dolibarr_app/dashboard/side_menu.dart';
import 'format.dart';
import 'back_end.dart';
import 'Model.dart';
import 'AddContact.dart';

class HomeContact extends StatelessWidget {
  const HomeContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Liste des contacts'),
        backgroundColor: Colors.blue,
      ),
      endDrawer: const SideMenu(),
      body: const Center(
        child: ContactsList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateContactForm()),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ContactsList extends StatefulWidget {
  const ContactsList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ContactsListState();
  }
}

class _ContactsListState extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Contact>>(
      future: fetchContact(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          List<Contact>? contact = snapshot.data;
          return ContactListWidget(contactList: contact);
        } else if (snapshot.hasError) {
          String errorText = snapshot.error.toString();
          return Center(
            child: Text('Erreur lors de la récup des contacts : $errorText'),
          );
        } else {
          return const Center(
            child: Text('Erreur lors de la récup des contacts.'),
          );
        }
      },
    );
  }
}

class ContactListWidget extends StatelessWidget {
  final List<Contact>? contactList;

  const ContactListWidget({super.key, required this.contactList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 82, 45, 45),
      child: ListView.builder(
        itemCount: contactList?.length,
        itemBuilder: (BuildContext context, int index) {
          final contact = contactList![index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(
              "${contact.firstname} ${contact.lastname}",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
            subtitle: Text("${contact.email}  ${contact.address}"),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                // Action à effectuer lors du clic sur le bouton
              },
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormatContact(contact: contact),
                  ));
            },
          );
        },
      ),
    ));
  }
}
