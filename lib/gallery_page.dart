import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  final bool isGrid;

  const GalleryPage({Key? key, required this.isGrid}) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    List<AssetImage> images =
        List.generate(2045, (index) => AssetImage("images/image$index.jpg"));
    //list of images
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (widget.isGrid) ? 3 : 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Image(
            image: images[index],
            fit: BoxFit.cover,
          );
        });
  }
}
