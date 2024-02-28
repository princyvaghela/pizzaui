import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'My orders.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool isResturents = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15,),
          child: InkWell(
            onTap: () {
              Get.to(Orders());
            },
              child: Icon(Icons.arrow_back_ios_new_outlined,size: 20)),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 65),
          child: Text("Favorites",style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/image 14.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0XFFF2F2F2)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {
                          isResturents = !isResturents;

                          setState(() {});
                        },
                        child: Container(
                          height: 80,
                          width: 130,
                          decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(50), color: isResturents == true ? Colors.deepOrange : Colors.white),
                          child:
                          const Center(child: Text("Food Items", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        isResturents = !isResturents;
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 130,
                          height: 80,
                          decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(50), color: isResturents == false ? Colors.deepOrange : Colors.white),
                          child:
                          const Center(child: Text("Resturents", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(
                color: Colors.white,
                height: 250,
                width: 380,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/foog.jpg"),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 10,
                            ),
                            Text(
                              "Chicken Hawaiian",
                              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 37,),
                          child: Text("Chicken, Cheese and pineapple",style: TextStyle(color: Color(0xff5B5B5E),fontSize: 15,fontWeight: FontWeight.bold),),
                        ),

                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 13, top: 10),
                      child: Container(
                        width: 85,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text("\$",style: TextStyle(color: Colors.deepOrange)),
                              Text("12.20", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20)),

                            ],
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 140, left: 16),
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text("4.5", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold)),
                              Icon(Icons.star, color: Color(0XFFFFC529), size: 20),
                              Text("(25+\n)", style: TextStyle(fontSize: 10,color: Color(0xffB3B3B3))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 250,
                        top: 10,
                      ),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.favorite, color: Colors.white,size: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 30,left: 30),

              child: Container(
                height: 260,
                width: 380,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/bghf.jpg"),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                              height: 35,
                            ),
                            Text(
                              "Red N Hot Pizza",
                              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: Text("Chicken, Chili",style: TextStyle(color: Color(0xff5B5B5E),fontSize: 15,fontWeight: FontWeight.bold),),
                        )

                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 14, top: 10),
                      child: Container(
                        width: 85,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text("\$",style: TextStyle(color: Colors.deepOrange)),
                              Text("10.35", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20)),

                            ],
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 137, left: 16),
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text("4.5", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold)),
                              Icon(Icons.star, color: Color(0XFFFFC529), size: 20),
                              Text("(25+\n)", style: TextStyle(fontSize: 10,color: Color(0xffB3B3B3))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 250,
                        top: 10,
                      ),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.favorite, color: Colors.white,size: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),




            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(
                height: 270,
                width: 380,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/fghjklkjhgfd.jpg"),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 35,
                            ),
                            Text(
                              "Chicken Hawaiian",
                              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:50,),
                          child: Text("Chicken, Cheese and pineapple",style: TextStyle(color: Color(0xff5B5B5E),fontSize: 15,fontWeight: FontWeight.bold),),
                        ),

                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 14, top: 10),
                      child: Container(
                        width: 85,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text("\$",style: TextStyle(color: Colors.deepOrange)),
                              Text("08.28", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20)),

                            ],
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 137, left: 16),
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text("4.5", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold)),
                              Icon(Icons.star, color: Color(0XFFFFC529), size: 20),
                              Text("(25+\n)", style: TextStyle(fontSize: 10,color: Color(0xffB3B3B3))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 250,
                        top: 10,
                      ),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.favorite, color: Colors.white,size: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
