import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 8.0),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 0.5,
              ),
              image: const DecorationImage(
                image: ExactAssetImage("assets/images/seed.png"),
                alignment: Alignment.topCenter,
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Seeds",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 8.0),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 0.5,
              ),
              image: const DecorationImage(
                image: ExactAssetImage("assets/images/plant3.png"),
                alignment: Alignment.topCenter,
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Plants",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 8.0),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 0.5,
              ),
              image: const DecorationImage(
                image: ExactAssetImage("assets/images/method2.png"),
                alignment: Alignment.topCenter,
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Method",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 8.0),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 0.5,
              ),
              image: const DecorationImage(
                image: ExactAssetImage("assets/images/disease.png"),
                alignment: Alignment.topCenter,
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Disease",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
        ],
      ),
    );
  }
}


