import 'package:flutter/material.dart';
import 'package:module11_practice_project/screens/login_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

//GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.grey,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black, //Color.fromARGB(100, 164, 37, 242),
            weight: 300,
            size: 32,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Reset password",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Enter the PIN sent to your email address jahangir@gmail.com",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 8,
                ),
                const TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Confirm Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 8,
                ),
                const TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 64),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(),
                      ),
                      const SizedBox(width: 8,),
                      Flexible(
                        child: TextFormField(),
                      ),
                      const SizedBox(width: 8,),
                      Flexible(
                        child: TextFormField(),
                      ),
                      const SizedBox(width: 8,),
                      Flexible(
                        child: TextFormField(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),

                   const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Resent code in: ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      Text("0:59", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),

                    ],

                ),


                const SizedBox(
                  height: 24,
                ),

                //const Spacer(),
                //const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const LoginScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(99, 20, 188, 1),
                      ),
                      child: const Text(
                        "Reset Password",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
