import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  User({this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'],
        email: object['email'],
        firstName: object['first_name'],
        lastName: object['last_name'],
        avatar: object['avatar']);
  }

  static Future<User> getUserFromApi(int id) async {
    String apiUrl = "https://reqres.in/api/users/" + id.toString();
    var apiRes = await http.get(apiUrl);
    var jsonObject = json.decode(apiRes.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}

class UninitializedUser extends User {}
