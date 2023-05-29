import 'package:flutter/material.dart';
import 'package:flutter_login/widget/banner_widget.dart';

import '../../widget/calculator.dart';
import '../../widget/categories.dart';
import '../../widget/comment.dart';
import '../../widget/drawer_widget.dart';
import '../../widget/home_screen_weather.dart';
import '../crops/fruits_list.dart';
import '../crops/vegetable_list.dart';
import '../news/news.dart';
import '../weather/weather.dart';
import '../yojna/yojna_list.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("FarmEase"),
      ),

      /** Drawer */
      drawer: const DrawerWidget(),
      
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.green,
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: 'Rent'),
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: 'Community'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded), label: 'Person'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),

      /** Home Screen **/
      body: SingleChildScrollView(
        child: Column(
          children: [
            /** Weather forecast **/
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyWeather(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 4.0),
                child: HomeScreenWeather(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(6.0, 4.0, 8.0, 4.0),
              child: Container(
                padding: const EdgeInsets.only(left: 4.0, right: 6.0),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                      offset: Offset(
                        1,
                        1,
                      ),
                    ),
                  ],
                ),
                child: const CommentWidget(),
              ),
            ),

            /** Articles **/
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12.0, top: 16, bottom: 8),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            const CategoriesWidget(),
            /** Articles **/

            /** Banner Section **/
            const Padding(
              padding: EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
              child: BannerWidget(),
            ),

            /** Land Measurement **/
            const CalculatorWidget(),

            /** Daily News **/
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyNews(),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Daily News",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.newspaper,
                        size: 30,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
            ),

            /** Info of crops **/
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, top: 16.0, bottom: 16.0),
                child: Text(
                  "Information of crops",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyFruits(),
                        ),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(
                              1,
                              1,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          width: 0.5,
                        ),
                        image: const DecorationImage(
                            image: ExactAssetImage("assets/images/fruits.png"),
                            alignment: Alignment.topCenter),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Fruits",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyVegetable(),
                        ),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(
                              1,
                              1,
                            ),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          width: 0.5,
                        ),
                        image: const DecorationImage(
                            image: ExactAssetImage("assets/images/plant3.png"),
                            alignment: Alignment.topCenter),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Vegetable",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),


            InkWell(
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
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

