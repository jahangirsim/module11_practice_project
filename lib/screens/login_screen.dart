import 'package:flutter/material.dart';
import 'package:module11_practice_project/screens/forget_password_screen.dart';
import 'package:module11_practice_project/screens/new_user_signup_screen.dart';
import 'package:module11_practice_project/screens/user_dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/P_Pay_Logic.png"),
              const SizedBox(
                height: 48,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Welcome Back, ")),
              const SizedBox(height: 8,),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Jahangir Alam", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
              const SizedBox(height: 24,),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Phone Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8,),
              const Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "+880", border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    flex: 8,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "19129970", border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 8,),
               Align(
                alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Forget your password?"),
                  //SizedBox(width: 8,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPasswordScreen()));
                  }, child: const Text("Click here", style: TextStyle(color: Color.fromRGBO(99, 20, 188, 1)),))
                ],
              ),),
              const SizedBox(height: 48,),
              SizedBox(
                height: 60,
                  width: double.maxFinite,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const UserDashboard()));
                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(99, 20, 188, 1)
                  ), child: const Text("Sign In", style: TextStyle(color: Colors.white),))),
              const SizedBox(height: 48,),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(width: 8,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewUserSignupScreen()));
                  }, child: const Text("Sign Up", style: TextStyle(color: Color.fromRGBO(99, 20, 188, 1)),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
