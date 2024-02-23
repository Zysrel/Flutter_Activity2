import 'package:activity2/main.dart';
import 'package:flutter/material.dart';

class UserDetailsScreen extends StatelessWidget {
  final User user;

  const UserDetailsScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue.shade50,
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
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                     boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), 
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.account_circle_sharp,
                          color: Colors.blue,
                          size: 100.0,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          user.name,
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Email: ${user.email}',
                          style: const TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w600),
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
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3), 
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
//users info
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(Icons.account_box, color: Color.fromARGB(255, 2, 89, 160),),
                                      SizedBox(width: 8.0,),
                                         Text(
                                          'Account',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15.0,
                                            color: Color.fromARGB(255, 9, 23, 103),
                                          ),
                                        ),
                                      
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'ID No. : ${user.id}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Username : ${user.username}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
// Address Container
                        const SizedBox(width: 5),
                        Container(
                          width: 175,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3), 
                              ),
                            ],
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(Icons.location_on, color: Color.fromARGB(255, 171, 13, 2)),
                                      SizedBox(
                                        width: 8.0
                                      ),
                                         Text(
                                          'Address',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15.0,
                                            color: Color.fromARGB(255, 3, 17, 95),
                                          ),
                                        ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Street: ${user.street}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Suite: ${user.suite}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'City: ${user.city}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Zipcode: ${user.zipcode}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
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
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3), 
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
//Geo Container
                          child: Container(
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
                                       Icon(Icons.public, color: Color.fromARGB(255, 3, 123, 7)),
                                       SizedBox(
                                        width: 8.0,
                                      ),
                                        Text(
                                          'Geography',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15.0,
                                            color: Color.fromARGB(255, 3, 17, 95),
                                          ),
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
                        ),
// Contact Info Container
                        const SizedBox(width: 5),
                        Container(
                          width: 175,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3), 
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                       Icon(Icons.phone, color: Color.fromARGB(255, 1, 52, 81)),
                                       SizedBox(
                                        width: 8.0,
                                      ),
                                         Text(
                                          'Contacts',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15.0,
                                            color: Color.fromARGB(255, 3, 17, 95),
                                          ),
                                        ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Phone: ${user.phone}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Website: ${user.website}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5.0), 
                    Row(
                      children: [
                        Container(
                          width: 358.0,
                          height: 160.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3), 
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
//Company Container
                          child: Container(
                            margin: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                       Icon(Icons.apartment_rounded, color: Color.fromARGB(255, 2, 23, 208)),
                                       SizedBox(
                                        width: 8.0,
                                      ),
                                       Text(
                                          'Company Details',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15.0,
                                            color: Color.fromARGB(255, 28, 3, 95),
                                          ),
                                        ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Name: ${user.companyname}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Catch Phrase: ${user.catchphrase}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Business: ${user.bs}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
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
      ),
    );
  }
}
