import 'dart:convert';
//import 'package:dolibarr_app/Users/Model.dart';
import 'package:dolibarr_app/contacts/SetContacts/Model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'AddContact.dart' as ContactAdd;

const api =
    'http://dolibarrproject-001-site1.ftempurl.com/htdocs/api/index.php/contacts';

Future<List<Contact>> fetchContact() async {
  var token = await SessionManager().get("token");
  // print('okcfcvfnurfiuvcnrvrnennzenfenne');
  final response = await http.Client().get(Uri.parse(api),
      headers: ({
        'DOLAPIKEY': token.toString(),
      }));
  //print(response.statusCode);

  if (response.statusCode == 200) {
    List contacts = json.decode(response.body) as List;
    return contacts.map((contact) => Contact.fromJson(contact)).toList();
  } else {
    throw Exception('Impossible de récupérer les contacts');
  }
}

Future<Contact> showOneContact(String login) async {
  var token = await SessionManager().get("token");
  final response = await http.Client().get(Uri.parse(api),
      headers: ({
        'DOLAPIKEY': token.toString(),
        'function': "users",
        'Sqlfilters': "login'$login'",
      }));
  if (response.statusCode == 200) {
    Contact contact = json.decode(response.body) as Contact;
    return contact;
  } else {
    throw Exception('Impossible de récupérer le contact');
  }
}

Future<Object> addContact(ContactAdd.AddContact contact) async {
  var token = await SessionManager().get("token");
  final response = await http.Client().post(
    Uri.parse(api),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'DOLAPIKEY': token
    },
    body: json.encode(contact),
  );
  return response.body;
}

Future<String> delete(String id) async {
  var token = await SessionManager().get("token");
  final response = await http.Client().delete(
    Uri.parse("$api/$id"),
    headers: <String, String>{'DOLAPIKEY': token},
  );
  //print(response.body.toString());
  return response.body.toString();
}
