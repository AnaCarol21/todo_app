import 'package:flutter/material.dart';
import 'package:todo_app/todo.dart';
import 'package:todo_app/todo_item_widget.dart';

List<Todo> todoList = [
  Todo.create('Tarefa 1'),
  Todo.create('Tarefa 2'),
  Todo.create('Tarefa 3'),
  Todo.create('Tarefa 4'),
  Todo.create('Tarefa 5'),
];

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        return TodoItemWidget(todo: todoList[index]);
      },
    );
  }
}
