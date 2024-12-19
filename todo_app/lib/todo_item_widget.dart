import 'package:flutter/material.dart';
import 'package:todo_app/todo.dart';

class TodoItemWidget extends StatefulWidget {
  const TodoItemWidget({super.key, required this.todo});
  final Todo todo;

  @override
  State<TodoItemWidget> createState() => _TodoItemWidgetState();
}

class _TodoItemWidgetState extends State<TodoItemWidget> {
  late TextEditingController todoController;
  @override
  void initState() {
    todoController = TextEditingController(text: widget.todo.task);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextFormField(
        controller: todoController,
        decoration: const InputDecoration.collapsed(
          hintText: 'Escreva sua tarefa',
        ),
        onChanged: onChanged,
      ),
      leading: Checkbox(
        value: widget.todo.completed,
        onChanged: onToggled,
      ),
      trailing: IconButton(
        visualDensity: VisualDensity.compact,
      icon: const Icon(Icons.close_rounded),

      onPressed: onDeleted
      , 
      ),
    );
  }

  void onChanged(String task) {
    print(task);
  }

  void onToggled(_) {
    print(_);
  }
  void onDeleted() {
    print('tarefa deletada');
  }
}
