import 'package:fireflutter/fireflutter.dart';
import 'package:fireflutter/todo/screens/assign.detail.screen.dart';
import 'package:flutter/material.dart';

class MyTodoScreen extends StatelessWidget {
  const MyTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: TaskListView(
                separatorBuilder: (p0, p1) {
                  return const SizedBox(
                    height: 4,
                  );
                },
                queryOptions: TaskQueryOptions(
                  assignToContains: my!.uid,
                ),
                itemBuilder: (task, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.teal[100],
                    ),
                    child: ListTile(
                      title: Text("Task: ${task.title}"),
                      onTap: () async {
                        final assign =
                            await TodoService.instance.getMyAssign(task.id);
                        if (assign == null) return;
                        if (!context.mounted) return;
                        showGeneralDialog(
                          context: context,
                          pageBuilder: (context, a1, a2) => AssignDetailScreen(
                            assign: assign,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
