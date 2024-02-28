import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'food ui/Loginpage.dart';
import 'food ui/food hub.dart';
import 'food ui/singuppage.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset("assets/kmj.jpg", fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 280,top: 20),
                    child: InkWell(
                      onTap: () {
                        Get.to(SingUp());
                      },
                      child: Container(
                        width:65,
                        height: 32,
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(child: Text("Skip" ,style: TextStyle(fontSize:  15,color: Colors.deepOrange))),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 150),
                    child: Text(
                      "welcome to",
                      style: TextStyle( fontSize: 55,fontWeight: FontWeight. w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      top: 220,
                    ),
                    child: Text(
                      "FoodHub",
                      style: TextStyle(fontSize: 50, color: Color(0XFFFE724C), fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 300),
                    child: Text(
                      "Your favouite foods delivered",
                      style: TextStyle(fontSize: 20, color: Color(0XFF30384F), fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 330),
                    child: Text(
                      "fast at your door.",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Color(0XFF30384F)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 26,top:510,left: 26),
                    child: Row(
                      children: [
                        Container(
                          height: 1,
                          width: 100,
                          color: Colors.white,
                        ),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("sign in with",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 1,
                            width: 100,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 550,left: 25),
                        child: Container(
                          width: 140,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.facebook,color: Colors.blue,size: 25),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text("FACEBOOK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 550,right: 25,left: 25),
                        child: Container(
                          width: 135,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Image.asset("assets/google 4.png",height: 25),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text("GOOGLE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 620),
                      child: Container(
                        width: 315,
                        height: 55,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                            color:Colors.blueGrey,boxShadow: [BoxShadow(color: Colors.white,spreadRadius: 1),]

                        ),
                        child: Center(child: Text("Start With email or phone",style: TextStyle(color: Colors.white,fontSize: 15))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 690,right: 60,),
                    child: Center(child: Text("Already have an account?",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 690,left: 250),
                    child: InkWell(
                        onTap: () {
                        Get.to(Login());
                        },
                        child: Text("Sign In",style: TextStyle(fontWeight:FontWeight.w400,fontSize: 15,color: Colors.white,decoration: TextDecoration.underline,decorationColor: Colors.white,decorationThickness: 1 ),
                        )),
                  )


                ]
                ),
              ],
            ),
          ]
        )
    );
  }
}
