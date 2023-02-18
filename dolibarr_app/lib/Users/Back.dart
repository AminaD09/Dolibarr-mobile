import 'dart:convert';
import 'package:dolibarr_app/Users/Model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_session_manager/flutter_session_manager.dart';

const api =
    'http://dolibarrproject-001-site1.ftempurl.com/htdocs/api/index.php/users';

Future<List<User>> fetchUsers() async {
  var token = await SessionManager().get("token");
  // print('okcfcvfnurfiuvcnrvrnennzenfenne');
  final response = await http.Client().get(Uri.parse(api),
      headers: ({
        'DOLAPIKEY': token.toString(),
      }));
  //print(response.statusCode);

  if (response.statusCode == 200) {
    List users = json.decode(response.body) as List;
    return users.map((user) => User.fromJson(user)).toList();
  } else {
    throw Exception('Impossible de récupérer les utilisateurs');
  }
}

Future<User> showOneUser(String login) async {
  var token = await SessionManager().get("token");
  final response = await http.Client().get(Uri.parse(api),
      headers: ({
        'DOLAPIKEY': token.toString(),
        'function': "users",
        'Sqlfilters': "login'$login'",
      }));
  if (response.statusCode == 200) {
    User user = json.decode(response.body) as User;
    return user;
  } else {
    throw Exception('Impossible de récupérer l\' utilisateur');
  }
}

Future<Object> addUser(Adduser user) async {
  var token = await SessionManager().get("token");
  final response = await http.Client().post(
    Uri.parse(api),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'DOLAPIKEY': token
    },
    body: json.encode(user),
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

Future<int> updateUser(String id, Adduser user) async {
  var token = await SessionManager().get("token");

  final response = await http.Client().put(
    Uri.parse("$api/$id"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'DOLAPIKEY': token
    },
    body: json.encode(user),
  );
  print(response.statusCode);

  return response.statusCode;
}
