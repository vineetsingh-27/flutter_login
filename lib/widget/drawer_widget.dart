import 'package:flutter/material.dart';

import '../screens/calculator/calculator.dart';
import '../screens/crops/fruits_list.dart';
import '../screens/weather/weather.dart';
import '../screens/yojna/yojna_list.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                currentAccountPicture: CircleAvatar(
                  child: Image.asset("assets/images/profile.jpeg"),
                ),
                accountName: const Text("Vineet Singh"),
                accountEmail: const Text("vineet199927@gmail.com")),
          ),
          ListTile(
            title: const Text("Weather Forecast"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyWeather(),
                ),
              );
            },
            leading: const Icon(
              Icons.cloud,
            ),
          ),
          ListTile(
            title: const Text("Land Measurement"),
            leading: const Icon(
              Icons.calculate,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyCalculator(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Crops"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyFruits(),
                ),
              );
            },
            leading: const Icon(
              Icons.newspaper,
            ),
          ),
          ListTile(
            title: const Text("Government Yojna"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyYojnaList(),
                ),
              );
            },
            leading: const Icon(
              Icons.article,
            ),
          ),
          ListTile(
            title: const Text("Sign out"),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'phone', (route) => false);
            },
            leading: const Icon(Icons.exit_to_app),
          )
        ],
      ),
    );
  }
}

