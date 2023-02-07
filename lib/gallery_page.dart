import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    List<AssetImage> images =
        List.generate(2045, (index) => AssetImage("images/image$index.jpg"));
    //list of images
    return Scaffold(
      appBar: AppBar(title: const Text('Gallery'), actions: [
        IconButton(
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
            icon: Icon((isGrid) ? Icons.list : Icons.grid_view))
      ]),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (isGrid) ? 3 : 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Image(
              image: images[index],
              fit: BoxFit.cover,
            );
          }),
    );
  }
}
