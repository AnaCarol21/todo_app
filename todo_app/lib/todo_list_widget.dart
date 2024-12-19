import 'package:flutter/material.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text(
            'Tarefa 1',
          ),
        )
      ],
    );
  }
}
