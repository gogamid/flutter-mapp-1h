import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return  ListTile(
            leading: const Icon(Icons.person),
            title: Text('Profile ${(index + 1)}'),
            subtitle: const Text('Profile Page'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              debugPrint('Profile ${(index + 1)} is clicked');
            },
          );
        });
  }
}
