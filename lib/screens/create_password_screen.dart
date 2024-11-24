import 'package:flutter/material.dart';
import 'package:module11_practice_project/screens/residential_address_screen.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

//GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
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
          actions: const [
            Text("Step 3 of 4", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            SizedBox(width: 20,)
          ],
        ),
        body:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8,),
                const Text("Create your password", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                const SizedBox(height: 8,),
                const Text("Choose a strong password", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                const SizedBox(height: 24,),
                const Text("Password", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                const SizedBox(height: 8,),
                const TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 24,),
                const Text("Confirm Password", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                const SizedBox(height: 8,),
                const TextField(
                  
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 32,),
                //const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                  child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ResidentialAddressScreen()));
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
