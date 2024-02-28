import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pizzaui/food%20ui/homepage.dart';

import 'Reviewspage.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  var color1 = Colors.grey;
  var color2 = Colors.grey;
  var color3 = Colors.grey;
  var color4 = Colors.grey;
  var color5 = Colors.grey;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
                children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 50),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("assets/hup.jpg"),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 10),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: InkWell(
                            onTap: () {
                              Get.to(Reviews());
                            },
                            child: Icon(Icons.arrow_back_ios_new_outlined)),
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
                            "assets/pizza4.png",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Pizza Hut",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                Text("4102  Pretty View Lanenda", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff9796A1))),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 40,
                    ),

                    Icon(
                      Icons.lens,
                      color: Color(0xff53D776),
                      size: 10,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Order Delivered",
                      style: TextStyle(
                        color: Color(0xff53D776),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please Rate Delivery Service",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Good",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.deepOrange),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: 50,),
                    InkWell(
                      onTap: () {
                        color1=Colors.amber;
                        color2=Colors.grey;
                        color3=Colors.grey;
                        color4=Colors.grey;
                        color5=Colors.grey;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.star,size: 40,
                        color: color1,
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: () {
                        color1=Colors.amber;
                        color2=Colors.amber;
                        color3=Colors.grey;
                        color4=Colors.grey;
                        color5=Colors.grey;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.star,size: 40,
                        color: color2,
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: () {
                        color1=Colors.amber;
                        color2=Colors.amber;
                        color3=Colors.amber;
                        color4=Colors.grey;
                        color5=Colors.grey;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.star,size: 40,
                        color: color3,
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: () {
                        color1=Colors.amber;
                        color2=Colors.amber;
                        color3=Colors.amber;
                        color4=Colors.amber;
                        color5=Colors.grey;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.star,size: 40,
                        color: color4,
                      ),
                    ),
                    SizedBox(width: 15,),
                    InkWell(
                      onTap: () {
                        color1=Colors.amber;
                        color2=Colors.amber;
                        color3=Colors.amber;
                        color4=Colors.amber;
                        color5=Colors.amber;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.star,size: 40,
                        color: color5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: TextFormField(
              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                  hintText: "Write review",
                  hintStyle: TextStyle( color: Colors.grey,fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(15,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                      color: Colors.deepOrange
                  ),
                    borderRadius: BorderRadius.circular(15,
                    ),),
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
      height: 160,
    ),
    
    Container(
    width: 248,
    height: 60,
    decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(40)),
       child: Center(child: InkWell(
         onTap: () {
           Get.to(Homepage());
         },
           child: Text("SUBMIT",style: TextStyle(color: Colors.white, fontSize: 17)))),
    )
                ],
              ),
        ));
  }
}
