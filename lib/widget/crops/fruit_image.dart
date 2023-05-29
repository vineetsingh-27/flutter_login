import 'package:flutter/material.dart';

class FruitImage extends StatelessWidget {
  final String image;
  const FruitImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    );
  }
}
