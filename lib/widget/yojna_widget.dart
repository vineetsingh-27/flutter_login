import 'package:flutter/material.dart';

import '../screens/yojna/yojna_list.dart';

class YojnaWidget extends StatelessWidget {
  const YojnaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyYojnaList(),
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
          child: const Text(
            "Krishi Scheme",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}