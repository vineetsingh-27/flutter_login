// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_login/screens/news/detail_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;
  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsDes,
      required this.newsCnt,
      required this.newsHead,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          FadeInImage.assetNetwork(
              height: 270,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              placeholder: "assets/images/placeholder.jfif",
              image: imgUrl),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 18,
              ),
              Text(
                newsHead.length > 90
                    ? "${newsHead.substring(0, 90)}..."
                    : newsHead,
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                newsDes,
                style: const TextStyle(fontSize: 12, color: Colors.black38),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                newsCnt != "--"
                    ? newsCnt.length > 250
                        ? newsCnt.substring(0, 250)
                        : "${newsCnt.toString().substring(0, newsCnt.length - 15)}..."
                    : newsCnt,
                style: const TextStyle(fontSize: 16),
              ),
            ]),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
                  ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailViewScreen(newsUrl: newsUrl)));
                    },
                    child: const Text("Read More")).py16(),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
