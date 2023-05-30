import 'package:flutter/material.dart';


class HomeScreenWeather extends StatelessWidget {
  const HomeScreenWeather({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 145,
        margin: const EdgeInsets.only(top: 5),
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
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 16, left: 16),
                  child: Text(
                    "09:00",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 28, left: 16),
                  child: Text(
                    "Thursday",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 16),
                  child: Text(
                    "May 26",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(180, 8, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.sunny,
                    size: 85.0,
                    color: Colors.yellow,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 16, 0),
                    child: Text(
                      "Kalyan",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
