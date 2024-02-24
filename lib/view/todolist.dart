import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:activity2/models/tododata.dart';
import 'package:activity2/widgets/todo_item.dart';
import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
   Future<List<Tododata>> postsFuture = getTodos();



  static Future<List<Tododata>> getTodos() async {
    var url = Uri.parse('http://192.168.1.9:3001/todos');
    final response =
        await http.get(url, headers: {"Content-Type": "application/json"});
    final List body = json.decode(response.body);
    return body.map((e) => Tododata.fromJson(e)).toList();
  }

  bool isdone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: SafeArea(
          child: Center(
            child: FutureBuilder<List<Tododata>>(
                future: postsFuture,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final todos = snapshot.data!;
                    return TodoItem(todos: todos);
                  } else if (snapshot.hasError) {
                    return Text('Érror: ${snapshot.error}');
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
          )),
    );
  }
}
