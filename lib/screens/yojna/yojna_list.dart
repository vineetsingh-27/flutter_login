import 'package:flutter/material.dart';

class MyYojnaList extends StatelessWidget {
  const MyYojnaList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Krishi Yojna"),
        //leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Yojna",
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Container(
              height: 120,
              width: 360,
              color: Colors.green,
              child: Row(
                children: const [
                  Text("Pradhan Mantri Kisan \nSamman Nidhi (PM-KISAN)",
                  style: TextStyle(fontSize: 22),)
                ],
            ),
            ),
          )
        ],
      ),
      
    );
  }
}
