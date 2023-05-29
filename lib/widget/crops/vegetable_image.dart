import 'package:flutter/material.dart';

class VegetableImage extends StatelessWidget {
  final String image;
  const VegetableImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    );
  }
}
