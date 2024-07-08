import 'package:fireflutter/fireflutter.dart';
import 'package:flutter/material.dart';

class AssignDetailScreen extends StatelessWidget {
  const AssignDetailScreen({
    super.key,
    required this.assign,
  });

  final Assign assign;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assign Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("UID: ${assign.uid}"),
            Text("Status: ${assign.status}"),
            const Spacer(),
            ElevatedButton(
              onPressed: () async {
                await assign.delete();
                if (!context.mounted) return;
                Navigator.of(context).pop();
              },
              child: const Text("UNASSIGN"),
            ),
            const SafeArea(
              child: SizedBox(height: 24),
            ),
          ],
        ),
      ),
    );
  }
}
