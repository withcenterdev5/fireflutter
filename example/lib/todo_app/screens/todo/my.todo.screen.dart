import 'package:fireflutter/fireflutter.dart';
import 'package:fireflutter/todo/screens/assign.detail.screen.dart';
import 'package:fireflutter/todo/widgets/assign.list_view.dart';
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
            child: AssignListView(
              // queryOptions: TaskQueryOptions(
              //   assignToContains: my?.uid,
              // ),
              queryOptions: AssignQueryOptions(
                uid: my?.uid,
              ),
              itemBuilder: (assign, index) {
                return ListTile(
                  title: Text("TASK ID:${assign.taskId}"),
                  onTap: () {
                    showGeneralDialog(
                      context: context,
                      pageBuilder: (context, a1, a2) => AssignDetailScreen(
                        assign: assign,
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
