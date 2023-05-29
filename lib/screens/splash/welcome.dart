import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../auth/register.dart';


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      checkUserAuthentication();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void checkUserAuthentication() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Register(),
          ),
        );
      } else {
        Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          color: const Color.fromARGB(255, 30, 30, 30),
          child: const Image(
            image: AssetImage("assets/images/agrigo-logo.png"),
          ),
        ),
      ),
    );
  }
}
