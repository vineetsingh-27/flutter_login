import 'package:flutter/material.dart';

import '../screens/calculator/calculator.dart';

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyCalculator(),
          ),
        );
      },
      child: Card(
        shadowColor: Colors.grey,
        elevation: 3.0,
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 150,
          margin: const EdgeInsets.only(top: 5),
          decoration: const BoxDecoration(
            color: Colors.white30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Land Measurement",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.calculate,
                size: 30,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

