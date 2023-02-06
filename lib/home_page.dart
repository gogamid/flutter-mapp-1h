import 'package:flutter/material.dart';
import 'learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const LearnFlutterPage()));
          },
          child: const Text('Learn Flutter')),
    );
  }
}
