import 'package:flutter/material.dart';
import 'package:module11_practice_project/screens/login_screen.dart';

class ResidentialAddressScreen extends StatefulWidget {
  const ResidentialAddressScreen({super.key});

  @override
  State<ResidentialAddressScreen> createState() => _ResidentialAddressScreenState();
}

//GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _ResidentialAddressScreenState extends State<ResidentialAddressScreen> {
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
            Text("Step 4 of 4", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
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
                const Text("Residential Address", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                const SizedBox(height: 8,),
                const Row(
                  children: [
                    Text("Great job so far, ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),),
                    Text("Jahangir!", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  ],
                ),

                const SizedBox(height: 24,),
                const Text("Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                const SizedBox(height: 8,),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "176, Gulshan Avnue, North CA",
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 24,),
                const Text("District", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                const SizedBox(width: 16,),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Faridpur",
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 24,),
                const Text("Division", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                const SizedBox(width: 16,),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Dhaka",
                      border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(value: true, onChanged: (newValue){}),
                    const Expanded(child:  Text("I attest all the information provided above are correct",)),
                  ],
                ),
                const Spacer(),
                const SizedBox(height: 16,),
                //const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                  child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
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
