import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pizzaui/bottambar.dart';

import 'homepage.dart';
import 'new address save.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  bool isHistory = false;
  bool isCancel = false;
  bool isRate = false;
  bool isReorder = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
         Get.to(BottombarScreen());
          },
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(Icons.arrow_back_ios_new_outlined,size: 20),
            )),
        title: Padding(
          padding: const EdgeInsets.only(left: 47),
          child: Text("My Orders" ,style: TextStyle(color: Color(0XFF303030), fontSize: 24, fontWeight: FontWeight.bold),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 29),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                child: Image.asset(
                  "assets/image 14.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Column(children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 20, top: 20),
          //   child: Row(
          //     children: [
          //       InkWell(
          //         onTap: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => BottombarScreen(),
          //               ));
          //         },
          //         child: Icon(
          //           Icons.arrow_back_ios,
          //           size: 20,
          //         ),
          //       ),
          //       SizedBox(width: 75),
          //       Text(
          //         "My Orders",
          //         style: TextStyle(color: Color(0XFF303030), fontSize: 25, fontWeight: FontWeight.bold),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(left: 50, top: 10),
          //         child: ClipRRect(
          //           borderRadius: BorderRadius.circular(10),
          //           child: Container(
          //             width: 40,
          //             height: 40,
          //             decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
          //             child: Image.asset(
          //               "assets/image 14.jpg",
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 35,left: 16,right: 20),
            child: Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width /1.2,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0XFFF2F2F2)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        isHistory = !isHistory;

                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(30), color: isHistory == true ? Colors.deepOrange : Colors.white),
                        child:
                            const Center(child: Text("Upcoming", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      isHistory = !isHistory;
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(30), color: isHistory == false ? Colors.deepOrange : Colors.white),
                        child: const Center(child: Text("History", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))),
                      ),
                    ),
                    // child: Text(
                    //  "History",
                    //  style: TextStyle(fontSize: 20, color:isHistory== false ? Colors.blue:Colors.white),
                    // ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30,left: 30),
            child: Container(
              height: 260,
              width: 360,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0XFFF2F2F2)),
              child: Column(
                children: [
                  ListTile(
                    title: Text(" 3 Items",style: TextStyle(color: Color(0xff9796A1))),
                    subtitle: Row(
                      children: [
                        Text("Starbuck",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                        Icon(Icons.check_circle,color: Color( 0xff029094),size: 10,)
                      ],
                    ),
                    leading: Image.asset("assets/star.jpg"),
                    trailing: Padding(
                        padding: const EdgeInsets.only(bottom: 20), child: Text("#264100", style: TextStyle(color: Colors.deepOrange, fontSize: 15))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text("Estimated Arrival", style: TextStyle(color: Color(0XFF9796A1))),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Text(
                        "Now",
                        style: TextStyle(color: Color(0XFF9796A1)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "25",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 5),
                        child: Text("min", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text("Food on the way", style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 14,
                      width: MediaQuery.of(context).size.width / 0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0XFFF2F2F2)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              isCancel = !isCancel;
                              setState(() {});
                            },
                            child: Container(
                              width: 125,
                              height: 50,
                              decoration:
                                  BoxDecoration(borderRadius: BorderRadius.circular(50), color: isCancel == true ? Colors.deepOrange : Colors.white),
                              child:
                                  const Center(child: Text("Cancel", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))),
                            ),
                          ),
                          const SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              isCancel = !isCancel;
                              setState(() {});
                            },
                            child: Container(
                              width: 120,
                              height: 50,
                              decoration:
                                  BoxDecoration(borderRadius: BorderRadius.circular(50), color: isCancel == false ? Colors.deepOrange : Colors.white),
                              child: const Center(
                                  child: Text("Track Order", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: Text(
              "Lasted Orders",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 30,right: 30),
            child: Container(
              width: 375,
              height: 175,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: const Color(0XFFF2F2F2)),
              child: Column(
                children: [
                  ListTile(
                    title: Text("20 Jun, 10:30"),
                    subtitle: Text("Jimmy John’s "),
                    leading: Image.asset("assets/john.jpg"),
                    trailing: Padding(
                        padding: const EdgeInsets.only(bottom: 20, right: 16),
                        child: Text("\$17.10", style: TextStyle(color: Colors.deepOrange, fontSize: 15))),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Icon(
                          Icons.noise_control_off,
                          color: Color(0XFF4EE476),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("Order Delivered", style: TextStyle(color: Color(0XFF4EE476))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 10,right: 16),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 16,
                      width: MediaQuery.of(context).size.width / 0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0XFFF2F2F2)),
                      child: Row(
                        children: [

                          InkWell(
                            onTap: () {
                              isRate = !isRate;
                              setState(() {});
                            },
                            child: Container(
                              width: 130,
                              height: 50,
                              decoration:
                                  BoxDecoration(borderRadius: BorderRadius.circular(50), color: isRate == true ? Colors.deepOrange : Colors.white),
                              child:
                                  const Center(child: Text("Rate", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))),
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              isRate = !isRate;
                              setState(() {});
                            },
                            child: Container(
                              width: 125,
                              height: 50,
                              decoration:
                                  BoxDecoration(borderRadius: BorderRadius.circular(50), color: isRate == false ? Colors.deepOrange : Colors.white),
                              child: const Center(
                                  child: Text("Re-Order", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30,left: 30),
            child: Container(
              width: 375,
              height: 175,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: const Color(0XFFF2F2F2)),
              child: Column(
                children: [
                  ListTile(
                    title: Text("19 Jun, 11:50"),
                    subtitle: Text("Subway  "),
                    leading: Image.asset("assets/s.jpg"),
                    trailing: Padding(
                        padding: const EdgeInsets.only(bottom: 20, right: 16),
                        child: Text("\$20.50", style: TextStyle(color: Colors.deepOrange, fontSize: 15))),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Icon(
                          Icons.noise_control_off,
                          color: Color(0XFF4EE476),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("Order Delivered", style: TextStyle(color: Color(0XFF4EE476))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 14,
                      width: MediaQuery.of(context).size.width / 0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color(0XFFF2F2F2)),
                      child: Row(
                        children: [
                          // SizedBox(
                          //   width: 10,
                          // ),
                          InkWell(
                            onTap: () {
                              isReorder = !isReorder;
                              setState(() {});
                            },
                            child: Container(
                              width: 135,
                              height: 50,
                              decoration:
                                  BoxDecoration(borderRadius: BorderRadius.circular(50), color: isReorder == true ? Colors.deepOrange : Colors.white),
                              child:
                                  const Center(child: Text("Rate", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))),
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              isReorder = !isReorder;
                              setState(() {});
                            },
                            child: Container(
                              width: 135,
                              height: 50,
                              decoration:
                                  BoxDecoration(borderRadius: BorderRadius.circular(50), color: isReorder == false ? Colors.deepOrange : Colors.white),
                              child: const Center(
                                  child: Text("Re-Order", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
