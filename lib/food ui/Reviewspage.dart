import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pizzaui/food%20ui/homepage.dart';

import '../bottambar.dart';
import 'Ratingpage.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(scrollDirection:Axis.vertical ,
        child: Column(
          children: [
            SizedBox(
              width:70,
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 40,
                  height:40,
                  decoration: BoxDecoration(color: Colors.white,boxShadow:[BoxShadow(color: Colors.black12, blurRadius:2)],borderRadius: BorderRadius.circular(10)
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(BottombarScreen());
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 95,
                ),
                Text("Reviews",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Container(
                width: 360,
                height: 60,
                child: TextFormField(
                  style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: "Write your review...",
                      hintStyle: TextStyle( color: Color(0xff111719),fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon:InkWell(
                        onTap: () {
                          Get.to(Rating());
                        },
                          child: Image.asset("assets/jukhg.png",width: 30,height: 30)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(15,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                          color: Colors.deepOrange
                      ),
                        borderRadius: BorderRadius.circular(15,
                        ),)
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Email";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/alyce.jpg"),
                        radius: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,left: 45),
                        child: Container(
                          height: 18,
                          width: 22,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow.shade700),
                          child: Center(child: Text("5.0",style: TextStyle(color: Colors.white,fontSize: 8))),
                        ),
                      )
                    ],
                  ),
                  title: Text("Alyce Lambo",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w400)
                  ),
                  subtitle: Text("25/06/2020",style: TextStyle(
                    fontWeight: FontWeight.w400,color: Color(0xffB3B3B3,),fontSize: 12
                  )),
                  trailing: Image.asset("assets/erro.jpg",width: 15,height: 15,)


                ),



              ],

            ),
            Padding(
              padding: const EdgeInsets. only(
                right: 0,
              ),
              child: Text("Really convenient and the points system helps\n"
                  "benefit loyalty. Some mild glitches here and \n"
                  "there, but nothing too egregious. Obviously\n"
                  "needs to roll out to more remote.",style: TextStyle(fontSize: 15,color: Color(0xff7F7D92)),),
            ),
            SizedBox(
              height: 20,
            ),

            Stack(
              children: [
                ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/Rectangle.jpg"),
                          radius: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30,left: 45),
                          child: Container(
                            height: 18,
                            width: 22,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                color: Colors.yellow.shade700),
                            child: Center(child: Text("4.5",style: TextStyle(color: Colors.white,fontSize: 8))),
                          ),
                        )
                      ],
                    ),
                    title: Text("Gonela Solom",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w400)
                    ),
                    subtitle: Text("22/06/2020",style: TextStyle(
                        fontWeight: FontWeight.w400,color: Color(0xffB3B3B3,),fontSize: 12
                    )),
                    trailing: Image.asset("assets/erro.jpg",width: 15,height: 15,)


                ),



              ],

            ),
            Padding(
              padding: const EdgeInsets. only(
                  right: 0
              ),
              child: Text("Been a life saver for keeping our sanity during\n"
                  "the pandemic, although they could improve\n"
                  "some of their ui and how they handle specials \n"
                  "as it often is unclear how to use them or \n"
                  "everything is sold out so fast it feels a bit bait\n"
                  "and switch. Still I'd be stir crazy and losing\n "
                  "track of days without so...",style: TextStyle(fontSize: 15,color: Color(0xff7F7D92)),),
            ),
            SizedBox(
              height: 20,
            ),


            Stack(
              children: [
                ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/fdsery.jpg"),
                          radius: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30,left: 45),
                          child: Container(
                            height: 18,
                            width: 22,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                color: Colors.yellow.shade700),
                            child: Center(child: Text("2.5",style: TextStyle(color: Colors.white,fontSize: 8))),
                          ),
                        )
                      ],
                    ),
                    title: Text("Brian C",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w400)
                    ),
                    subtitle: Text("21/06/2020",style: TextStyle(
                        fontWeight: FontWeight.w400,color: Color(0xffB3B3B3,),fontSize: 12
                    )),
                    trailing: Image.asset("assets/erro.jpg",width: 15,height: 15,)


                ),



              ],

            ),
            Padding(
              padding: const EdgeInsets. only(
                  right: 0
              ),
              child: Text("Got an intro offer of 50% off first order that did\n"
                  "not work..... I have scaled the app to find a \n"
                  "contact us button but only a spend with us \n"
                  "button available. ",style: TextStyle(fontSize: 15,color: Color(0xff7F7D92)),),
            ),
            SizedBox(
              height: 20,
            ),


            Stack(
              children: [
                ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/Zxc.jpg"),
                          radius: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30,left: 45),
                          child: Container(
                            height: 18,
                            width: 22,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                color: Colors.yellow.shade700),
                            child: Center(child: Text("3.5",style: TextStyle(color: Colors.white,fontSize: 8))),
                          ),
                        )
                      ],
                    ),
                    title: Text("Helsmar E",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w400)
                    ),
                    subtitle: Text("20/06/2020",style: TextStyle(
                        fontWeight: FontWeight.w400,color: Color(0xffB3B3B3,),fontSize: 12
                    )),
                    trailing: Image.asset("assets/erro.jpg",width: 15,height: 15,)


                ),



              ],

            ),
            Padding(
              padding: const EdgeInsets. only(
                  right: 0
              ),
              child: Text("Amet minim mollit non deserunt ullamco est sit\n"
                  "aliqua dolor do amet sint. Velit officia \n"
                  "consequat duis. Amet minim mollit non\n"
                  "deserunt ullamco est sit.",style: TextStyle(fontSize: 15,color: Color(0xff7F7D92)),),
            ),


          ],
        ),
      ),
    );
  }
}
