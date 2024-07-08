import 'package:example/todo_app/screens/todo/my.todo.screen.dart';
import 'package:fireflutter/fireflutter.dart';
import 'package:flutter/material.dart';

class TodoHomeScreen extends StatefulWidget {
  static const String routeName = '/';
  const TodoHomeScreen({super.key});

  @override
  State<TodoHomeScreen> createState() => _TodoHomeScreenState();
}

class _TodoHomeScreenState extends State<TodoHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              showGeneralDialog(
                context: context,
                pageBuilder: (_, __, ___) => const MyTodoScreen(),
              );
            },
            icon: const Icon(Icons.checklist),
          )
        ],
      ),
      body: Column(
        children: [
          AuthState(
            builder: (user) => user == null
                ? const EmailPasswordLogin()
                : ElevatedButton(
                    onPressed: () => i.signOut(),
                    child: const Text('Logout'),
                  ),
          ),
          MyDoc(
            builder: (user) => user == null
                ? const SizedBox.shrink()
                : Text(
                    'Welcome, ${user.displayName}, ${user.lastLoginAt}, UID: ${user.uid}'),
          ),
          ElevatedButton(
              onPressed: () {
                showGeneralDialog(
                  context: context,
                  pageBuilder: (_, __, ___) => const TaskCreateScreen(),
                );
              },
              child: const Text("Create a task")),
          Expanded(
            child: TaskListView(
              queryOptions: TaskQueryOptions(),
            ),
          ),
        ],
      ),
    );
  }
}
