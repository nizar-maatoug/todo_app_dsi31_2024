import 'package:flutter/material.dart';
import 'package:todo_app/features/home/presentation/widgets/toolbar_action_theme_widget.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO APP'),
        actions: [ActionThemeButton()],
      ),
      body: const Center(child: Text('Tasks Screen')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
