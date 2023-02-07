import 'package:flutter/material.dart';
import 'package:flutter_mapp_1h_project/gallery_page.dart';
import 'package:flutter_mapp_1h_project/home_page.dart';
import 'package:flutter_mapp_1h_project/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  bool isGrid = true;
  List<Widget> pages = const <Widget>[
    HomePage(),
    GalleryPage(isGrid: true),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
        actions: currentPage == 1
            ? [
                IconButton(
                  icon: const Icon(Icons.list),
                  onPressed: () {
                    setState(() {
                      isGrid = !isGrid;
                      pages = <Widget>[
                        const HomePage(),
                        GalleryPage(isGrid: isGrid),
                        const ProfilePage(),
                      ];
                    });
                  },
                ),
              ]
            : [],
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating Button is clicked');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.photo), label: 'Gallery'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            //refreshes the screen
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
