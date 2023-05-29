import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FruitHeader extends StatelessWidget {
  const FruitHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Crops".text.xl4.make(),
        "Trending fruits".text.xl2.make(),
      ],
    );
  }
}
