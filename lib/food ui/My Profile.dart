import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pizzaui/food%20ui/homepage.dart';

import '../bottambar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool ispassWordvaildtion = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height,
                      child: Image.asset("assets/debug.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 25),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BottombarScreen(),
                                  ));
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130, top: 120),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Image.asset(
                            "assets/eljad.png",width: 150,height: 150,
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 150),
                    //   child: Stack(
                    //     children: [
                    //       Container(
                    //         height: 110,
                    //         width: 110,
                    //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.blue),
                    //       ),
                    //       Center(
                    //         child: Padding(
                    //           padding: const EdgeInsets.only(top: 6),
                    //           child: CircleAvatar(
                    //             radius: 49,
                    //             backgroundColor: Colors.yellow.shade700,
                    //             backgroundImage: AssetImage("assets/jukhg.png"),
                    //           ),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(top: 65,left: 65),
                    //         child: CircleAvatar(
                    //           radius: 20,
                    //           backgroundColor: Colors. white ,
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 73,top: 75),
                    //         child: Icon(Icons.camera_alt_rounded,color: Colors.grey,size: 20),
                    //       ),
                    //     ],
                    //   ),
                    //
                    // ),
                    Padding(
                      padding: const EdgeInsets.only( top: 255,left: 120),
                      child: Text("Eljad Eendaz",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 24)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only( top: 285,left: 140),
                      child: Text("Edit Profile",style: TextStyle(color: Color(0XFF9796A1),fontWeight: FontWeight.w500,fontSize: 18)),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 350, left: 25),
                      child: Text("Full name", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 380, right: 16),
                      child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: [
                            TextFormField(
                              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                              controller: nameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter Name";
                                }
                                return null;
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:15, right: 270,),
                              child: Text("E-mail", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 1, top:15, right: 1),
                              child: TextFormField(
                                style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                                controller: emailController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Email";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:5, right: 210,),
                              child: Text("Phone Number", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 1, top:15, right: 1),
                              child: TextFormField(
                                style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                                controller: phoneController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Email";
                                  }
                                  return null;
                                },
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),



                  ],
                ),


              ],
            ),
          ]
        )
    );
  }
}
