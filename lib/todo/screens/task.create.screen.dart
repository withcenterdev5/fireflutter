import 'package:fireflutter/fireflutter.dart';
import 'package:flutter/material.dart';

class TaskCreateScreen extends StatefulWidget {
  static const String routeName = '/TodoCreate';
  const TaskCreateScreen({super.key});

  @override
  State<TaskCreateScreen> createState() => _TodoCreateScreenState();
}

class _TodoCreateScreenState extends State<TaskCreateScreen> {
  final titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Create'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            LabelField(
              label: 'TITLE'.t,
              controller: titleController,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: createTask,
              child: const Text("Create Task"),
            ),
            const SafeArea(
              child: SizedBox(
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  createTask() async {
    if (titleController.text.isEmpty) return;
    await Task.create(title: titleController.text);
    if (!mounted) return;
    Navigator.of(context).pop();
  }
}
