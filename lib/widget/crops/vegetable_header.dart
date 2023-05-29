import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class VegetableHeader extends StatelessWidget {
  const VegetableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Crops".text.xl4.make(),
        "Trending Vegetables".text.xl2.make(),
      ],
    );
  }
}
