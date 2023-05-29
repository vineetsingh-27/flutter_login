import 'package:flutter/material.dart';
import 'package:flutter_login/models/fruits.dart';
import 'package:flutter_login/screens/crops/fruits_details_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'fruit_image.dart';

class FruitList extends StatelessWidget {
  const FruitList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: FruitsModel.items?.length,
      itemBuilder: (context, index) {
        final fruit = FruitsModel.items![index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FruitsDetailPage(fruit: fruit)),
          ),
          child: FruitItem(fruit: fruit),
        );
      },
    );
  }
}

class FruitItem extends StatelessWidget {
  final Item fruit;
  const FruitItem({Key? key, required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
                  tag: Key(fruit.title.toString()),
                  child: FruitImage(image: fruit.image_url).h8(context))
              .px4(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                fruit.title.text.bold.xl2.make().px16(),
                fruit.month_of_cultivation.text.xl
                    .textStyle(context.captionStyle)
                    .make()
                    .px16(),
                10.heightBox,
              ],
            ),
          ),
        ],
      ),
    ).white.rounded.square(100).make().py8();
  }
}
