import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learn Flutter'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Column(children: [
          Image.asset('images/Google-Flutter-logo.png'),
          const SizedBox(
            height: 30,
          ), //just box to take space
          const Divider(
            color: Colors.lightGreen,
            thickness: 5,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            width: double.infinity, //takes all the width
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                  'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ),
          ),
        ]));
  }
}
