import 'package:flutter/material.dart';
import 'package:module11_practice_project/screens/create_password_screen.dart';

class EnterVerificationCodeScreen extends StatefulWidget {
  const EnterVerificationCodeScreen({super.key});

  @override
  State<EnterVerificationCodeScreen> createState() => _EnterVerificationCodeScreenState();
}

//GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _EnterVerificationCodeScreenState extends State<EnterVerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.grey,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,//Color.fromARGB(100, 164, 37, 242),
            weight: 300,
            size: 32,
          ),
        ),
        body:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24,),
                const Text("Enter verification code", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                const SizedBox(height: 16,),
                const Text("We sent a 6-digit verification code to +880191299", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                const SizedBox(height: 32,),
                const Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Flexible(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Flexible(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(

                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Flexible(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(

                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Flexible(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(

                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Flexible(
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(

                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),

                  ],
                ),
                const SizedBox(height: 24,),
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Code expires in "),
                          Text("0.54s", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),

                        ],
                      ),
                      SizedBox(height: 16,),
                      Text("Resent code", style: TextStyle(color: Color.fromRGBO(
                          99, 20, 188, 1, ), fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),


                const SizedBox(height: 64,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                  child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CreatePasswordScreen()));
                      },
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(
                            99, 20, 188, 1),), child: const Text("Continue", style: TextStyle(color: Colors.white, fontSize: 18),),),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
