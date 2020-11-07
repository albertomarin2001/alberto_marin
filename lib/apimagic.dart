import 'dart:convert';
import 'package:alberto_marin/magic.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:alberto_marin/magic.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  final String url = "https://allugofrases.herokuapp.com/frases/random";

  //GET STUDENTS
  Future<List<Parcial>> getStudents() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String token = sharedPreferences.getString('token');

    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new Parcial.fromJson(job)).toList();
    } else
      throw Exception('Failed to load students from API');
  }

  //GET STUDENT BY ID
  Future<Parcial> getParcial(String frase) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String token = sharedPreferences.getString('token');

    final response = await http.get(
      '$url/$frase',
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200)
      return Parcial.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load student from API');
  }
}
