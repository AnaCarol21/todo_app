import 'package:flutter/material.dart';
import 'package:todo_app/todo_list_widget.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Lista de Tarefas'),
      ),
      body: ListView(
        children: [
          //TODO: new task widget
          TodoListWidget(),
        ],
      )
    );
  }
}
