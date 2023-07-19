import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  final String? name;
  final String? email;
  final int? age;
  final String? gender;

  const User({this.name, this.email, this.age, this.gender});

  factory User.createUser(Map<String, dynamic> json) {
    return User(
        name: json['name'],
        email: json['email'],
        age: json['age'],
        gender: json['gender']);
  }

  static Future<User> connectToApi(String id) async {
    Uri apiUrl = Uri.parse("http://10.0.2.2:8000/api/v1/users");

    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    print(userData);

    return User.createUser(userData);
  }
}

class Post {}
