import 'package:flutter/material.dart';
import 'package:flutter_login/widget/banner_widget.dart';

import '../../widget/calculator.dart';
import '../../widget/categories.dart';
import '../../widget/comment.dart';
import '../../widget/crops/crops_widget.dart';
import '../../widget/drawer_widget.dart';
import '../../widget/home_screen_weather.dart';
import '../../widget/news_widget.dart';
import '../../widget/yojna_widget.dart';
import '../weather/weather.dart';

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
        title: const Text("AgriGo"),
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
            const NewsWidget(),

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
            const CropsWidget(),

            const SizedBox(
              height: 15,
            ),


            /** Yojna Section **/
            const YojnaWidget(),

            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}