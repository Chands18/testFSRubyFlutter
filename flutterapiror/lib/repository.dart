// import 'dart:convert';

// import 'package:flutterapiror/model.dart';
// import 'package:http/http.dart' as http;

// class Repository {
//   final _baseUrl = 'http://localhost:3000/api/v1/users';

//   Future getData() async {
//     try {
//       final response = await http.get(Uri.parse(_baseUrl));

//       if (response.statusCode == 200) {
//         Iterable it = jsonDecode(response.body);
//         List<User> user = it.map((e) => User.createUser(e)).toList();
//         return user;
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }
