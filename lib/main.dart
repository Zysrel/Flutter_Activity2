import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:activity2/userdetails_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class User {
  final int id;
  final String name;
  final String email;
  final String username;
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final String lat;
  final String lng;
  final String phone;
  final String website;
  final String companyname;
  final String catchphrase;
  final String bs;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.lat,
    required this.lng,
    required this.phone,
    required this.website,
    required this.companyname,
    required this.catchphrase,
    required this.bs,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      username: json['username'],
      street: json['address']['street'],
      suite: json['address']['suite'],
      city: json['address']['city'],
      zipcode: json['address']['zipcode'],
      lat: json['address']['geo']['lat'],
      lng: json['address']['geo']['lng'],
      phone: json['phone'],
      website: json['website'],
      companyname: json['company']['name'],
      catchphrase: json['company']['catchPhrase'],
      bs: json['company']['bs'],
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'user-list',
      home: UserListScreen(),
    );
  }
}

class UserListScreen extends StatefulWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  late Future<List<User>> users;

  @override
  void initState() {
    super.initState();
    users = fetchUsers();
  }

  Future<List<User>> fetchUsers() async {
    final response =
        await http.get(Uri.parse('http://192.168.1.9:3001/faker'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List of Users',
        ),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<List<User>>(
          future: users,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  User currentUser = snapshot.data![index];

                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, right: 18.0, bottom: 5.0),
                    child: Container(
                      margin: const EdgeInsets.all(2.0),
                      child: ListTile(
                        leading: const Icon(
                          Icons.account_circle_sharp,
                          size: 40.0,
                        ),
                        title: Text(
                          currentUser.name,
                        ),
                        subtitle: Text(
                          currentUser.email,
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.info),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    UserDetailsScreen(user: currentUser),
                              ),
                            );
                          },
                        ),
                        onTap: () {},
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
