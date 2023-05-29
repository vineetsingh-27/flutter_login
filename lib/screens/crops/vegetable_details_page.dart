import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/vegetable.dart';

class VegetableDetailPage extends StatelessWidget {
  final Vegetable vegetable;
  const VegetableDetailPage({Key? key, required this.vegetable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vegetable Details"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                  padding:
                  const EdgeInsets.only(left: 16, right: 8, bottom: 20),
                  child: Column(
                    children: [
                      vegetable.title.text.xl4.bold
                          .color(Colors.green)
                          .make()
                          .py16(),
                      Hero(
                        tag: Key(vegetable.title.toString()),
                        child:
                        Image.network(vegetable.image_url).h40(context).py8(),
                      ),
                      "Month of Cultivation:"
                          .text
                          .xl3
                          .bold
                          .color(Colors.black)
                          .make(),
                      vegetable.month_of_cultivation.text.xl.make(),
                      30.heightBox,
                      "Description:".text.xl2.bold.color(Colors.black).make(),
                      vegetable.description.text.xl.make().centered(),
                      30.heightBox,
                      "Require Temperature to cultivate:".text.bold.xl2.make(),
                      vegetable.required_temperature.text.xl.make(),
                      30.heightBox,
                      "Types of soil required:".text.xl2.bold.make(),
                      vegetable.soil.text.xl.make(),
                      30.heightBox,
                      "How to cultivate".text.xl2.bold.make(),
                      vegetable.cultivation_process.text.xl.make(),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
