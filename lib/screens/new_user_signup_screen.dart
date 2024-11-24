import 'package:flutter/material.dart';
import 'package:module11_practice_project/screens/enter_your_phone_number_screen.dart';

class NewUserSignupScreen extends StatefulWidget {
  const NewUserSignupScreen({super.key});

  @override
  State<NewUserSignupScreen> createState() => _NewUserSignupScreenState();
}

//GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _NewUserSignupScreenState extends State<NewUserSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(79, 0, 174, 100),
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.grey,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,//Color.fromARGB(100, 164, 37, 242),
          weight: 300,
          size: 32,
        ),
        actions: const [
          Text("Step 1 of 4", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          SizedBox(width: 20,)
        ],
      ),
      body:  Form(
        //key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24,),
              const Text("Let's get started", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              const SizedBox(height: 16,),
              const Text("Register to steamline your payment with ease and effeciency.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
              const SizedBox(height: 24,),
              const Text("First Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const SizedBox(height: 8,),
              const TextField(
                decoration: InputDecoration(
                    hintText: "e.g Md Jahangir",
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 16,),
              const Text("Last Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const SizedBox(height: 8,),
              const TextField(
                decoration: InputDecoration(
                  hintText: "e.g Alam",
                    border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 16,),
              const Text("Email address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const SizedBox(height: 8,),
              const TextField(
                decoration: InputDecoration(
                    hintText: "e.g jahangir@gmail.com",
                    border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 16,),
              const Text("Enter a referral code (optional)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const SizedBox(height: 8,),
              const TextField(
                decoration: InputDecoration(
                    hintText: "e.g 08913499076",
                    border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 16,),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                child: Center(
                  child: SizedBox(
                      width: double.maxFinite,
                      height: 60,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const EnterYourPhoneNumberScreen()));
                      },
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(
                            99, 20, 188, 1),), child: const Text("Continue", style: TextStyle(color: Colors.white, fontSize: 18),),),),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
