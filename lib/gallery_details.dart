import 'package:flutter/material.dart';

class GalleryDetails extends StatelessWidget {
  final AssetImage image;

  const GalleryDetails({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Image Details')),
        body: Image(image: image));
  }
}
