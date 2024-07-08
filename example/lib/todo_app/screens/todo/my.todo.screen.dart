import 'package:fireflutter/fireflutter.dart';
import 'package:flutter/material.dart';

class MyTodoScreen extends StatelessWidget {
  const MyTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Todo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: TaskListView(
              queryOptions: TaskQueryOptions(
                assignToContains: my?.uid,
              ),
            ),
          )
        ],
      ),
    );
  }
}
