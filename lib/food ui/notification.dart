import 'package:flutter/material.dart';
// import 'package:furnitureui/furniture/search_3.dart';
import 'package:get/get.dart';

import 'favoritepage.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.to(Favorite());
          },
            child: Icon(Icons.arrow_back_ios_new_outlined,size: 20,)),
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text("Notification",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 23)),
        ),

      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                height: Get.height / 6.5,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/red2.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                "Your order #123456789 has been confirmed",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit."
                          "Turpis pretium et in arcu \nadipiscingnec. Turpispretium et"
                          "in arcu\nadipiscing nec. ",
                            style: TextStyle(fontSize: 12,color: Color(0XFF808080)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: Text("New",style: TextStyle(color: Colors.green,fontSize: 13,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),


          Row(
            children: [
              Container(
                height: Get.height / 6.5,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/red2.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                "Your order #123456789 has been confirmed",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit."
                                "Turpis pretium et in arcu \nadipiscingnec. Turpispretium et"
                                "in arcu\nadipiscing nec. ",
                            style: TextStyle(fontSize: 12,color: Color(0XFF808080)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Row(
            children: [
              Container(
                height: Get.height / 6,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color(0XFF808080),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,right: 60),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:20),
                        child: Text("Discover hot offer food this week.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Text(
                          "Lorem ipsum dolor sit amet,consectetur adipiscing \nelit.Turpis pretiumet in"
                              " arcu adipiscing nec. Turpis pretium "
                              "etin arcu adipiscing nec. ",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 260,
                          ),
                          Text(
                            "HOT!",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFFEB5757)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
          Row(
            children: [
              Container(
                height: Get.height / 7,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/salad.jpg",
               fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 7),
                            child: Text(
                                "Your order #123456789 has been shipped\n"
                                    "successfully",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Please help us to confirm and rate your order\n to get 10%"
                                  "discount code for next order. ",
                              style: TextStyle(fontSize: 12,color: Color(0XFF808080)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: Get.height/300,
            width: Get.width,
            decoration: BoxDecoration(color: Color(0XFFF0F0F0)),
          ),
          Row(
            children: [
              Container(
                height: Get.height / 6.5,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/red2.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                "Your order #123456789 has been confirmed",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit."
                                "Turpis pretium et in arcu \nadipiscingnec. Turpispretium et"
                                "in arcu\nadipiscing nec. ",
                            style: TextStyle(fontSize: 12,color: Color(0XFF808080)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),

          Container(
            height: Get.height/300,
            width: Get.width,
            decoration: BoxDecoration(color: Color(0XFFF0F0F0)),
          ),
          Row(
            children: [
              Container(
                height: Get.height / 6.5,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/red2.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                "Your order #123456789 has been canceled",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit."
                                "Turpis pretium et in arcu \nadipiscingnec. Turpispretium et"
                                "in arcu\nadipiscing nec. ",
                            style: TextStyle(fontSize: 12,color: Color(0XFF808080)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),

          Container(
            height: Get.height/300,
            width: Get.width,
            decoration: BoxDecoration(color: Color(0XFFF0F0F0)),
          ),
          Row(
            children: [
              Container(
                height: Get.height / 7,
                width: Get.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10.5,
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            "assets/salad.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 7),
                            child: Text(
                                "Your order #123456789 has been shipped\n"
                                    "successfully",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Please help us to confirm and rate your order\n to get 10%"
                                  "discount code for next order. ",
                              style: TextStyle(fontSize: 12,color: Color(0XFF808080)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: Get.height/300,
            width: Get.width,
            decoration: BoxDecoration(color: Color(0XFFF0F0F0)),
          ),

        ],
      ),
    );
  }
}