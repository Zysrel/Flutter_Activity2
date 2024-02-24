import 'package:activity2/models/tododata.dart';
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.todos});

  final List<Tododata> todos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todolist = todos[index];

          return ListTile(
            title: Text(todolist.todos),
            trailing:Icon(todolist.isdone? Icons.check_box: Icons.check_box_outline_blank,),
          );
        });
  }
}
