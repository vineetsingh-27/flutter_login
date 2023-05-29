import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(Icons.account_circle,
            size: 42, color: Colors.green),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Container(
            width: 280,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.greenAccent.shade100,
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(width: 0.5),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Hello Sir Ji",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        const Icon(Icons.add_circle_outline,
            size: 42, color: Colors.green)
      ],
    );
  }
}
