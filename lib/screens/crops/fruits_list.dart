import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/fruits.dart';
import '../../widget/crops/fruit_header.dart';
import '../../widget/crops/fruit_list_widget.dart';


class MyFruits extends StatefulWidget {
  const MyFruits({Key? key}) : super(key: key);

  @override
  State<MyFruits> createState() => _MyFruitsState();
}

class _MyFruitsState extends State<MyFruits> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var fruitsJson = await rootBundle.loadString("assets/fruits.json");
    var decodedData = jsonDecode(fruitsJson);
    var fruitsData = decodedData["fruits"];
    FruitsModel.items =
        List.from(fruitsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crops"),
        backgroundColor: Colors.green,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, 'home', (route) => false);
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FruitHeader(),
              10.heightBox,
              (FruitsModel.items != null && FruitsModel.items!.isNotEmpty)
                  ? const FruitList().expand()
                  : const CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
