import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:furnitureui/furniture/profile.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pizzaui/bottambar.dart';
import 'package:pizzaui/food%20ui/My%20Profile.dart';

import 'homepage.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool state = false;
  bool state1 = false;
  bool state2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(scrollDirection:Axis.vertical ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(BottombarScreen());
                    },
                    child: Icon(
                      Icons.arrow_back_ios,size: 20,
                    ),
                  ),
                  SizedBox(width: 105),
                  Text(
                    "Setting",
                    style: TextStyle(
                        color: Color(0XFF303030),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Personal Information",
                    style: TextStyle(
                        color: Color(0XFF909090),
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.border_color_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: Get.height / 11.5,
                width: Get.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("Name",
                            style:
                            TextStyle(color: Colors.black54, fontSize: 12)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            border:
                            OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: "Bruno Pham",
                            hintStyle:
                            TextStyle(fontSize: 14, color: Colors.black87)),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: Get.height / 11.5,
                width: Get.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text("Email",
                            style:
                            TextStyle(color: Colors.black54, fontSize: 12)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            border:
                            OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: "bruno203@gmail.com",
                            hintStyle:
                            TextStyle(fontSize: 14, color: Colors.black87)),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                        color: Color(0XFF909191),
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.border_color_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: Get.height / 11.5,
                width: Get.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text("Name",
                            style:
                            TextStyle(color: Colors.black54, fontSize: 12)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            border:
                            OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: "*****",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Notifications",
                    style: TextStyle(
                        color: Color(0XFF909191),
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: Get.height / 15,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      "Sales",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    Spacer(),
                    CupertinoSwitch(
                        value: state,
                        onChanged: (value) {
                          state = value;
                          setState(() {});
                          const SizedBox(
                            height: 20,
                          );
                          const Divider(
                            height: 1,
                            color: CupertinoColors.systemGrey5,
                          );
                          const SizedBox(
                              height: 30
                          );
                          Text(
                            state == true ? "Wifi turned on" : "Wifi turned off",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: state == true
                                    ? CupertinoColors.activeGreen
                                    : CupertinoColors.destructiveRed
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: Get.height / 15,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      "New arrivals",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    Spacer(),
                    CupertinoSwitch(
                        value: state1,
                        onChanged: (value) {
                          state1 = value;
                          setState(() {});
                          const SizedBox(
                            height: 20,
                          );
                          const Divider(
                            height: 1,
                            color: CupertinoColors.systemGrey5,
                          );
                          const SizedBox(
                              height: 30
                          );
                          Text(
                            state1 == true ? "Wifi turned on" : "Wifi turned off",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: state1 == true ? CupertinoColors
                                    .activeGreen : CupertinoColors.destructiveRed
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: Get.height / 15,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      "Delivery status changes",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    Spacer(),
                    CupertinoSwitch(
                        value: state2,
                        onChanged: (value) {
                          state2 = value;
                          setState(() {});
                          const SizedBox(
                            height: 20,
                          );
                          const Divider(
                            height: 1,
                            color: CupertinoColors.systemGrey5,
                          );
                          const SizedBox(
                              height: 30
                          );
                          Text(
                            state2 == true ? "Wifi turned on" : "Wifi turned off",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: state2 == true ? CupertinoColors
                                    .activeGreen : CupertinoColors.destructiveRed
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Help Center",
                    style: TextStyle(
                        color: Color(0XFF909191),
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: Get.height / 15,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  children: [
                    Text("FAQ", style: TextStyle(color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 15,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: Get.height / 15,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  children: [
                    Text("Contact Us", style: TextStyle(color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 15,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: Get.height / 15,
              width: Get.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  children: [
                    Text("Privacy & Terms", style: TextStyle(color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined, size: 15,)
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