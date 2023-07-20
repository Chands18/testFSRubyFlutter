import 'dart:convert';

import 'package:http/http.dart' as http;

import 'dataclass.dart';

class Service {
  Future<List<cData>> getAllData() async {
    final response = await http.get(
      Uri.parse("http://127.0.0.1:3000/api/v1/users"),
    );
    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((data) => cData.fromJson(data)).toList();
    } else {
      print(response.statusCode.toString());
      throw Exception("failed to load data ${response.statusCode}");
    }
  }
}
