import 'package:flutter/material.dart';
import 'package:module11_practice_project/screens/enter_verification_code_screen.dart';

class EnterYourPhoneNumberScreen extends StatefulWidget {
  const EnterYourPhoneNumberScreen({super.key});

  @override
  State<EnterYourPhoneNumberScreen> createState() =>
      _EnterYourPhoneNumberScreenState();
}

//GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _EnterYourPhoneNumberScreenState
    extends State<EnterYourPhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.grey,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black, //Color.fromARGB(100, 164, 37, 242),
          weight: 300,
          size: 32,
        ),
        actions: const [
          Text(
            "Step 2 of 4",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
        child: Form(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Enter your phone number",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "We will send you a verification code to verify your phone number.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Phone Number",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 8,
              ),
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
              const Spacer(),
              RichText(
                text: const TextSpan(
                    style: TextStyle(color: Colors.black),
                    //text: "By entering phone number and pressing continue, you are are agreed to the Paylogic's ", style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            "By entering phone number and pressing continue, you are are agreed to the Paylogic's ",
                      ),
                      TextSpan(
                        text: "Terms ",
                        style: TextStyle(
                            color: Color.fromRGBO(99, 20, 188, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "and ",
                      ),
                      TextSpan(
                        text: "Privacy Policy ",
                        style: TextStyle(
                            color: Color.fromRGBO(99, 20, 188, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ]),

                // Text("Terms ", style: TextStyle(color: Color.fromRGBO(
                //     99, 20, 188, 1), fontWeight: FontWeight.bold),),
                // Text("and "),
                // Text("Privacy Policy", style: TextStyle(color: Color.fromRGBO(
                //     99, 20, 188, 1),fontWeight: FontWeight.bold),),
              ),
              const SizedBox(
                height: 16,
              ),
              //const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const EnterVerificationCodeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(99, 20, 188, 1),
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),

                ),

              ),
              const SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
