import 'package:flutter/material.dart';
import 'package:flutter_login/models/vegetable.dart';
import 'package:flutter_login/screens/crops/vegetable_details_page.dart';
import 'package:flutter_login/widget/crops/vegetable_image.dart';
import 'package:velocity_x/velocity_x.dart';

class VegetableList extends StatelessWidget {
  const VegetableList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: VegetableModel.vegetable?.length,
      itemBuilder: (context, index) {
        final vegetable = VegetableModel.vegetable![index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    VegetableDetailPage(vegetable: vegetable)),
          ),
          child: VegetableItem(vegetable: vegetable),
        );
      },
    );
  }
}

class VegetableItem extends StatelessWidget {
  final Vegetable vegetable;
  const VegetableItem({Key? key, required this.vegetable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
                  tag: Key(vegetable.title.toString()),
                  child: VegetableImage(image: vegetable.image_url).h8(context))
              .px4(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                vegetable.title.text.bold.xl2.make().px16(),
                vegetable.month_of_cultivation.text.xl
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
