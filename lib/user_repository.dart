import 'dart:convert';

import 'package:activity2/main.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  final http.Client client;

  UserRepository({required this.client});

  Future<List<User>> fetchUsers() async {
    final response = await client.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),
    );

    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      List<User> users = jsonList.map((json) => User.fromJson(json)).toList();
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
