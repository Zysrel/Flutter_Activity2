part of 'package:activity2/user.dart';

class User {
  final String companyname;
  final String catchphrase;
  final String bs;

  User({
    required this.companyname,
    required this.catchphrase,
    required this.bs,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      companyname: json['company']['name'],
      catchphrase: json['company']['catchPhrase'],
      bs: json['company']['bs'],
    );
  }
}
