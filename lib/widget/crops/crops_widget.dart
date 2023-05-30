import 'package:flutter/material.dart';

import '../../screens/crops/fruits_list.dart';
import '../../screens/crops/vegetable_list.dart';

class CropsWidget extends StatelessWidget {
  const CropsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyFruits(),
                ),
              );
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    offset: Offset(
                      1,
                      1,
                    ),
                  ),
                ],
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  width: 0.5,
                ),
                image: const DecorationImage(
                    image: ExactAssetImage("assets/images/fruits.png"),
                    alignment: Alignment.topCenter),
              ),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Fruits",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyVegetable(),
                ),
              );
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    offset: Offset(
                      1,
                      1,
                    ),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  width: 0.5,
                ),
                image: const DecorationImage(
                    image: ExactAssetImage("assets/images/plant3.png"),
                    alignment: Alignment.topCenter),
              ),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Vegetable",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
