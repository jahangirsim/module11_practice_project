import 'package:flutter/material.dart';
import 'package:module11_practice_project/screens/flash_screen.dart';

class PayLogic extends StatefulWidget {
  const PayLogic({super.key});

  @override
  State<PayLogic> createState() => _PayLogicState();
}

class _PayLogicState extends State<PayLogic> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PayLogicFlashScreen(),
    );
  }
}
