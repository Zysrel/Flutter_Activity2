part of 'package:activity2/address.dart';

class User {
  final int?id;
  final String?name;
  final String?email;
  final String?username;
  final String?phone;
  final String?website;
  
  User({
     this.id,
     this.name,
     this.email,
     this.username,
     this.phone,
     this.website,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      username: json['username'],
      phone: json['phone'],
      website: json['website'],
    );
  }
}
