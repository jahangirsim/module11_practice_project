import 'package:flutter/material.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(99, 20, 188, 1),
        leading: const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("assets/images/20221017_230723.jpeg"),
        ),
        centerTitle: true,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Jahangir Alam",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
            Text(
              "Welcome back",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 24,
          )
        ],
      ),
      backgroundColor: const Color.fromRGBO(99, 20, 188, 1),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "\$100,000.00",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  child: Container(
                    height: 60,
                    width: 270,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(100, 147, 97, 215),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Standard Chartered Bank Ltd.",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "0014SDFCSWAC",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    //const Color.fromRGBO(99, 20, 188, 100),

                    //const Color.fromRGBO(99, 20, 188, 100),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  child: Container(
                    height: 35,
                    width: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(100, 147, 97, 215),
                    ),
                    child: const Center(
                      child: Text(
                        "Wallet ID: @jahangiralam",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
              ],
            ),
          ),

          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Container(
                // Optional: Set a fixed size for the card if desired
                color: Colors.redAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min, // This prevents the column from expanding
                      children: [
                        Container(
                          width: 60,
                          height: 60, // Fixed height
                          color: const Color.fromRGBO(99, 20, 188, 1),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.send_and_archive, size: 40),
                            color: Colors.white,
                          ),
                        ),
                        const Text("Send Cash"),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 60,
                          height: 60, // Fixed height
                          color: const Color.fromRGBO(99, 20, 188, 1),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove, size: 40),
                            color: Colors.white,
                          ),
                        ),
                        const Text("Withdraw Funds"),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 60,
                          height: 60, // Fixed height
                          color: const Color.fromRGBO(99, 20, 188, 1),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add, size: 40),
                            color: Colors.white,
                          ),
                        ),
                        const Text("Fund Wallet"),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 60,
                          height: 60, // Fixed height
                          color: const Color.fromRGBO(99, 20, 188, 1),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cancel_schedule_send_outlined, size: 40),
                            color: Colors.white,
                          ),
                        ),
                        const Text("Go Cashless"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )

          // Container(
          //   height: 300,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     color: Colors.white,
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          //     child: Card(
          //       //padding: EdgeInsets.all(24),
          //       //height: 50,
          //       //width: double.infinity,
          //       color: Colors.redAccent,
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Column(
          //             children: [
          //               Container(
          //                 //height: 60,
          //                 width: 60,
          //                 color: const Color.fromRGBO(99, 20, 188, 1),
          //                 child: IconButton(
          //                   onPressed: () {},
          //                   icon: const Icon(Icons.send_and_archive, size: 40,),
          //                   color: Colors.white,
          //                 ),
          //               ),
          //               Text("Send Cash")
          //             ],
          //           ),
          //           Column(
          //             children: [
          //               Container(
          //                 //height: 60,
          //                 width: 60,
          //                 color: const Color.fromRGBO(99, 20, 188, 1),
          //                 child: IconButton(
          //                   onPressed: () {},
          //                   icon: const Icon(
          //                     Icons.remove,
          //                     size: 40,
          //                   ),
          //                   color: Colors.white,
          //                 ),
          //               ),
          //             Text("Withdraw Funds")
          //             ],
          //           ),
          //           Column(
          //             children: [
          //               Container(
          //                // height: 60,
          //                 width: 60,
          //                 color: const Color.fromRGBO(99, 20, 188, 1),
          //                 child: IconButton(
          //                   onPressed: () {},
          //                   icon: const Icon(
          //                     Icons.add,
          //                     size: 40,
          //                   ),
          //                   color: Colors.white,
          //                 ),
          //               ),
          //               Text("Fund Wallet")
          //             ],
          //           ),
          //           Column(
          //             children: [
          //               Container(
          //                 //height: 60,
          //                 width: 60,
          //                 color: const Color.fromRGBO(99, 20, 188, 1),
          //                 child: IconButton(
          //                   onPressed: () {},
          //                   icon: const Icon(Icons.cancel_schedule_send_outlined, size: 40,),
          //                   color: Colors.white,
          //                 ),
          //               ),
          //               Text("Go Cashless")
          //             ],
          //           ),
          //
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      )),
    );
  }
}
