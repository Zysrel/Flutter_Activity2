part of 'package:activity2/user.dart';

class User {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  User({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      street: json['address']['street'],
      suite: json['address']['suite'],
      city: json['address']['city'],
      zipcode: json['address']['zipcode'],
    );
  }
}
