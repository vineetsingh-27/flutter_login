import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../home/home.dart';
import 'otp.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  static String verify = "";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isButtonDisabled = false;

  Home home = const Home();
  TextEditingController countrycode = TextEditingController();
  var phone = "";

  void disableButton() {
    setState(() {
      isButtonDisabled = true;
    });
  }

  void enableButton() {
    setState(() {
      isButtonDisabled = false;
    });
  }

  @override
  void initState() {
    countrycode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/register-logo.png",
                width: double.infinity,
              ),
              25.heightBox,
              Text(
                "Welcome to FarmEase".toUpperCase(),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              20.heightBox,
              const Text(
                textAlign: TextAlign.center,
                "We need to register your phone before getting started!",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              20.heightBox,
              Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        readOnly: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                      child: Text(
                        "|",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          phone = value;
                          if(phone.length == 10){
                            enableButton();
                          }else{
                            disableButton();
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              20.heightBox,
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isButtonDisabled
                      ? null
                      : () async {
                    disableButton();
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: countrycode.text + phone,
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed:
                          (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        Register.verify = verificationId;

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyOtp(),
                          ),
                        );
                      },
                      codeAutoRetrievalTimeout:
                          (String verificationId) {},
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isButtonDisabled
                        ? Colors.grey
                        : Colors.green.shade600,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: "Continue".text.xl.make(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
