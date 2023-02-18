import 'dart:convert';
import 'package:dolibarr_app/tiers/gestion/ModelTiers.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_session_manager/flutter_session_manager.dart';

const api =
    'http://dolibarrproject-001-site1.ftempurl.com/htdocs/api/index.php/thirdparties';

Future<List<Tiers>> fetchTiers() async {
  var token = await SessionManager().get("token");
  // print('okcfcvfnurfiuvcnrvrnennzenfenne');
  final response = await http.Client().get(Uri.parse(api),
      headers: ({
        'DOLAPIKEY': token.toString(),
      }));
  print(response.statusCode);

  if (response.statusCode == 200) {
    List tiers = json.decode(response.body) as List;
    return tiers.map((tiers) => Tiers.fromJson(tiers)).toList();
  } else {
    throw Exception('Impossible de récupérer les tiers');
  }
}

Future<Object> addTier(Addtier tier) async {
  var token = await SessionManager().get("token");
  final response = await http.Client().post(
    Uri.parse(api),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'DOLAPIKEY': token
    },
    body: json.encode(tier),
  );
  return response.body;
}
/*
Future<String> delete(String id) async {
  var token = await SessionManager().get("token");
  final response = await http.Client().delete(
    Uri.parse("$api/$id"),
    headers: <String, String>{'DOLAPIKEY': token},
  );
  //print(response.body.toString());
  return response.body.toString();
}
*/