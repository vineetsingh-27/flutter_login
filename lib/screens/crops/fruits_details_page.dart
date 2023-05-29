import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/fruits.dart';

class FruitsDetailPage extends StatelessWidget {
  final Item fruit;
  const FruitsDetailPage({Key? key, required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fruits Details"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 16, right: 8, bottom: 20),
                child: Column(
                  children: [
                    fruit.title.text.xl5.bold.color(Colors.green).make().py16(),
                    Hero(
                      tag: Key(fruit.title.toString()),
                      child: Image.network(fruit.image_url).h40(context).py8(),
                    ),
                    "Month of Cultivation:"
                        .text
                        .xl3
                        .bold
                        .color(Colors.black)
                        .make(),
                    fruit.month_of_cultivation.text.xl.make(),
                    30.heightBox,
                    "Description:".text.xl3.bold.color(Colors.black).make(),
                    fruit.description.text.xl.make().centered(),
                    30.heightBox,
                    "Require Temperature to cultivate:".text.bold.xl2.make(),
                    fruit.required_temperature.text.xl.make(),
                    30.heightBox,
                    "Types of soil required:".text.xl2.bold.make(),
                    fruit.soil.text.xl.make(),
                    30.heightBox,
                    "How to cultivate".text.xl2.bold.make(),
                    fruit.cultivation_process.text.xl.make(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
