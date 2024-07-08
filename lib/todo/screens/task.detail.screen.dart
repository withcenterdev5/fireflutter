import 'package:fireflutter/fireflutter.dart';
import 'package:fireflutter/todo/widgets/assign.list_view.dart';
import 'package:flutter/material.dart';

class TaskDetailScreen extends StatefulWidget {
  static const String routeName = '/TaskDetail';
  const TaskDetailScreen({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TaskDetail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Title: ${widget.task.title}"),
            Text("Content: ${widget.task.content}"),
            const SizedBox(height: 24),
            const Text("Assignees:"),
            const SizedBox(height: 24),
            Expanded(
              child: AssignListView(
                queryOptions: AssignQueryOptions(
                  task: widget.task,
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () async {
                final assignUser = await showGeneralDialog<User?>(
                  context: context,
                  pageBuilder: (context, a1, a2) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text("Assign to"),
                      ),
                      body: UserListView(
                        itemBuilder: (user, index) {
                          return UserListTile(
                            user: user,
                            onTap: () {
                              if (widget.task.assignTo.contains(user.uid)) {
                                errorToast(
                                    context: context,
                                    message: "Already Assigned");
                                return;
                              }
                              Navigator.of(context).pop(user);
                            },
                          );
                        },
                      ),
                    );
                  },
                );
                if (assignUser == null) return;
                await Assign.create(
                  uid: assignUser.uid,
                  taskId: widget.task.id,
                );
                if (!mounted) return;
                setState(() {
                  widget.task.assignTo.add(assignUser.uid);
                });
              },
              child: const Text('ASSIGN'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('UPDATE'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('DELETE'),
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
}
