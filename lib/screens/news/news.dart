import 'package:flutter/material.dart';
import 'package:flutter_login/controllers/fetchNews.dart';
import 'package:flutter_login/models/newsArt.dart';
import 'package:flutter_login/widget/crops/NewsContainer.dart';

class MyNews extends StatefulWidget {
  const MyNews({Key? key}) : super(key: key);

  @override
  State<MyNews> createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews> {
  bool isLoading = true;

  late NewsArt newsArt;

  // ignore: non_constant_identifier_names
  GetNews() async {
    newsArt = await FetchNews.fetchNews();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            setState(() {
              isLoading = true;
            });
            GetNews();
          },
          itemBuilder: (context, index) {
            return isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : NewsContainer(
                    imgUrl: newsArt.imgUrl,
                    newsCnt: newsArt.newsCnt,
                    newsHead: newsArt.newsHead,
                    newsDes: newsArt.newsDes,
                    newsUrl: newsArt.newsUrl);
          }),
    );
  }
}
