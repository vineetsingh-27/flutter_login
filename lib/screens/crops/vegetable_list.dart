import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/vegetable.dart';
import '../../widget/crops/vegetable_header.dart';
import '../../widget/crops/vegetable_list.dart';

class MyVegetable extends StatefulWidget {
  const MyVegetable({Key? key}) : super(key: key);

  @override
  State<MyVegetable> createState() => _MyVegetableState();
}

class _MyVegetableState extends State<MyVegetable> {
  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var vegetableJson = await rootBundle.loadString("assets/vegetable.json");
    var decodedData = jsonDecode(vegetableJson);
    var vegetableData = decodedData["vegetables"];
    VegetableModel.vegetable =
        List.from(vegetableData).map<Vegetable>((item) => Vegetable.fromMap(item)).toList();
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
              const VegetableHeader(),
              10.heightBox,
              (VegetableModel.vegetable != null && VegetableModel.vegetable!.isNotEmpty)
                  ? const VegetableList().expand()
                  : const CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }


}
