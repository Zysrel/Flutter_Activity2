import 'package:activity2/main.dart';
import 'package:activity2/view/todolist.dart';
import 'package:flutter/material.dart';


class UserDetailsScreen extends StatelessWidget {
  final User user;

  const UserDetailsScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 25.0, left: 16.0, right: 16.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  Header
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.chevron_left_sharp),
                    ),
                    const Text(
                      'Personal Information',
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.account_circle_sharp,
                          size: 100.0,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          user.name,
                        ),
                        Text(
                          'Email: ${user.email}',
                        ),
                      ],
                    ),
                  ),
                ),
                //Starting of the Users Details
                const SizedBox(height: 10.0),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.assignment_ind),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      'Account',
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'ID No. : ${user.id}',
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Username : ${user.username}',
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Address Container
                        const SizedBox(width: 2),
                        Container(
                          margin: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'Address',
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text('Street: ${user.street}'),
                                const SizedBox(height: 5),
                                Text('Suite: ${user.suite}'),
                                const SizedBox(height: 5),
                                Text('City: ${user.city}'),
                                const SizedBox(height: 5),
                                Text('Zipcode: ${user.zipcode}'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      children: [
                        Container(
                          height: 180,
                          width: 175,
                          margin: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.public),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      'Geographic',
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Latitude: ${user.lat}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Longitude: ${user.lng}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Contact Info Container
                        const SizedBox(width: 2),
                        Container(
                          margin: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.phone),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      'Contacts',
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Phone: ${user.phone}',
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Website: ${user.website}',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.apartment_rounded),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      'Company Details',
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text('Name: ${user.companyname}'),
                                const SizedBox(height: 5),
                                Text('Catch Phrase: ${user.catchphrase}'),
                                const SizedBox(height: 5),
                                Text('Business: ${user.bs}'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          child: ElevatedButton(
            onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => Todolist()));


            },
            child: Text("Show todos"),
          ),
        ),
      ],
    ));
  }
}

