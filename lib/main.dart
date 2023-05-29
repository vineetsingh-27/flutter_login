import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/auth/otp.dart';
import 'screens/auth/register.dart';
import 'screens/calculator/calculator.dart';
import 'screens/community/community.dart';
import 'screens/crops/fruits_list.dart';
import 'screens/crops/vegetable_list.dart';
import 'screens/home/home.dart';
import 'screens/news/news.dart';
import 'screens/rent/rent.dart';
import 'screens/weather/weather.dart';
import 'screens/splash/welcome.dart';
import 'screens/yojna/yojna_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.green,
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => const Welcome(),
        'register': (context) => const Register(),
        'otp': (context) => const MyOtp(),
        'home': (context) => const Home(),
        'weather': (context) => const MyWeather(),
        'calculator': (context) => const MyCalculator(),
        'news': (context) => const MyNews(),
        'fruits': (context) => const MyFruits(),
        'vegetable' : (context) => const MyVegetable(),
        'yojna_list': (context) => const MyYojnaList(),
        // 'yojna_details': (context) => const MyYojnaDetails(),
        'rent' : (context) => const Rent(),
        'community_post' : (context) => const MyCommunityPost(),
      },
    );
  }
}
