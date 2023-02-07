import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitched = false;
  bool isChecked = false;

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
          actions: [
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                debugPrint('Info Action Button is clicked');
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Image.asset('images/flutter.png'),
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
              width: double.infinity,
              //takes all the width
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
            TextButton(
              onPressed: () {
                debugPrint('Text Button is clicked');
              },
              child: const Text('Text Button'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitched ? Colors.blue : Colors.red,
              ),
              onPressed: () {
                debugPrint('Elevated Button is clicked');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: isChecked ? Colors.blue : Colors.red,
              ),
              onPressed: () {
                debugPrint('Outlined Button is clicked');
              },
              child: const Text('Outlined Button'),
            ),
            IconButton(
              onPressed: () {
                debugPrint('Icon Button is clicked');
              },
              icon: const Icon(Icons.add),
            ),
            //row widget with icon text and icon
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              //to make the whole row clickable
              onTap: () {
                debugPrint('Row Widget is clicked');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.local_fire_department),
                  Expanded(child: Text('Row Widget', textAlign: TextAlign.center)),
                  Icon(Icons.local_fire_department),
                ],
              ),
            ),
            //switch widget
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            //checkbox widget
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            //image from network
            Image.network(
                'https://storage.googleapis.com/cms-storage-bucket/images/Flutter_3_3.width-635.png'),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
              ),
            ),
          ]),
        ));
  }
}
