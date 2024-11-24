import 'dart:async';

import 'package:flutter/material.dart';
import 'package:module11_practice_project/screens/login_screen.dart';

class PayLogicFlashScreen extends StatefulWidget {
  const PayLogicFlashScreen({super.key});

  @override
  State<PayLogicFlashScreen> createState() => _PayLogicFlashScreenState();


}

class _PayLogicFlashScreenState extends State<PayLogicFlashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      Timer(const Duration(seconds: 2),
        () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()))

     );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/P_Pay_Logic.png", width: 120,),
            // SizedBox(height: 48,),
            // Text("Welcome Back, "),
            // SizedBox(height: 8,),
            // Text("Jahangir Alam", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            // SizedBox(height: 24,),
            // Text("Phone number", style: TextStyle(fontWeight: FontWeight.bold),),
            // SizedBox(height: 16,)

          ],
        ),
      ),
    );
  }
}
