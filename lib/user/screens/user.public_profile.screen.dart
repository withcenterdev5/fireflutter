import 'package:flutter/material.dart';
import 'package:fireflutter/fireflutter.dart';

class UserPublicProfileScreen extends StatelessWidget {
  static const String routeName = '/UserPublicProfile';
  const UserPublicProfileScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              UserAvatar(
                user: user,
                size: 100,
                radius: 50,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                user.displayName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                '(${user.name})',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              // Row(
              //   children: [
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: const Text(
              //         'Like',
              //       ),
              //     )
              //   ],
              // )
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
