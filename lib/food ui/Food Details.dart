import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cardpage.dart';
import 'homepage.dart';

enum SingingCharacter { kotlin, flutter }

class FoodDetails extends StatefulWidget {
  const FoodDetails({super.key});

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  bool isIncrement = false;
  bool isremove = false;

  int selectedvalue = 1;
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
        SizedBox(
          height: 40,
          width: 70,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Container(
            width: 370,
            height: 340,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("assets/beef.jpg"),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 10),
                      child: InkWell(
                        onTap: () {
                          Get.to(Homepage());
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 320,
                        top: 10,
                      ),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.favorite, color: Colors.white, size: 25),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 140,
                  ),
                  child: Text("Ground Beef Tacos", style: TextStyle(color: Color(0xff323643), fontWeight: FontWeight.bold, fontSize: 19)),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffFFC529),
                    ),
                    Text("4.5 ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    Text(
                      "(30+)",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("See Review",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.deepOrange,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 5),
                      child: Text("\$",style: TextStyle(color: Colors.deepOrange,fontSize: 15,fontWeight: FontWeight. bold)),
                    ),
                    Text("9.50", style: TextStyle(color: Colors.deepOrange, fontSize: 30, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 80,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if(counter>1){
                                counter--;
                              }
                              setState(() {});

                              isIncrement = false;
                              setState(() {});
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),color:  isIncrement== false ? Colors.deepOrange : Colors.white
                              ),
                              child: Icon(Icons.remove, color: isIncrement == false ?Colors.white:Colors.deepOrange),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, left: 20),
                            child: Text("${counter}", style: const TextStyle(fontSize: 30)),
                          ),
                          InkWell(
                            onTap: () {
                              counter++;
                              setState(() {});
                              isIncrement = true;
                              setState(() {});
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),color: isIncrement == true ? Colors.deepOrange : Colors.white
                              ),
                              child: Icon(Icons.add, color: isIncrement == false ? Colors.deepOrange : Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Text(
            "Brown the beef better. Lean ground beef – I like\n"
            "to use 85% lean angus. Garlic – use fresh\n"
            "chopped. Spices – chili powder, cumin, onion\n"
            "powder.",
            style: TextStyle(color: Color(0xff858992), fontSize: 14),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(
           left: 20
          ),
          child: Text(
            "Choice of Add On",
            style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset("assets/oooo.jpg", width: 50, height: 50),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Pepper Julienned",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "+\$2.30",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Radio(
                  value: 1,
                  groupValue: selectedvalue,
                  activeColor: Colors.deepOrange,
                  onChanged: (value) {
                    setState(() {
                      selectedvalue = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Image.asset("assets/yyyy.jpg", width: 50, height: 50),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Pepper Julienned",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "+\$2.30",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Radio(
                  value: 2,
                  groupValue: selectedvalue,
                  activeColor: Colors.deepOrange,
                  onChanged: (value) {
                    setState(() {
                      selectedvalue = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Image.asset("assets/post.jpg", width: 50, height: 50),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Pepper Julienned",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "+\$2.30",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Radio(
                  value: 3,
                  groupValue: selectedvalue,
                  activeColor: Colors.deepOrange,
                  onChanged: (value) {
                    setState(() {
                      selectedvalue = value!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 60,
        ),
   TextButton(onPressed: () {
     Get.to(Cart());
   }, child: Container(
       width: 180,
     height: 50,

     decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(50)),
       child: Row(
         children: [
           SizedBox(
             width: 10,
           ),
           Container(
               width: 30,
               height: 30,
               decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(50)),
               child: Icon(Icons.shopping_bag_rounded,color: Colors.deepOrange,)),
           SizedBox(
             width: 10,
           ),
           Center(child: Text("ADD TO CART",style: TextStyle(color: Colors.white,fontSize: 15),)),
         ],
       )

   )),
        // InkWell(
        //   onTap: () {
        //     Get.to(Cart());
        //   },
        //
        //   child: Container(
        //     width: 50,
        //     height: 53,
        //     decoration: BoxDecoration(
        //       color: Colors.deepOrange,
        //       borderRadius: BorderRadius.circular(50),
        //     ),
        //     child: Row(
        //       children: [
        //         SizedBox(
        //           width: 10,
        //         ),
        //         Container(
        //             width: 30,
        //             height: 30,
        //             decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(50)),
        //             child: Icon(Icons.shopping_bag_rounded,color: Colors.deepOrange,)),
        //         SizedBox(
        //           width: 10,
        //         ),
        //         Center(child: Text("ADD TO CART",style: TextStyle(color: Colors.white,fontSize: 15),)),
        //       ],
        //     )
        //
        //
        //   ),
        // ),

      ]
      ),
    );
  }
}
