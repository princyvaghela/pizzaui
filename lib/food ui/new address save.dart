import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../bottambar.dart';
import 'My orders.dart';
import 'cardpage.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController MobilenumberController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController streetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.to(BottombarScreen());
          },
            child: Icon(Icons.arrow_back_ios_new_outlined,size: 20)),
        title: Padding(
          padding: const EdgeInsets. only(left: 20,),
          child: Text("Add new address",style:  TextStyle (fontSize: 24,fontWeight: FontWeight.bold)),
        ),
      ),
        body: ListView(children: [
      Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          // child: Row(
          //   children: [
          //     InkWell(
          //       onTap: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => Cart(),
          //             ));
          //       },
          //       child: Icon(
          //         Icons.arrow_back_ios,
          //         size: 20,
          //       ),
          //     ),
          //     SizedBox(width: 50),
          //     Text(
          //       "Add new address",
          //       style: TextStyle(color: Color(0XFF303030), fontSize: 25, fontWeight: FontWeight.bold),
          //     )
          //   ],
          // ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:20, right: 270,left: 20),
          child: Text("Full Name", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Email";
              }
              return null;
            },
            style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            controller: fullNameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:20, right: 220,left: 10),
          child: Text("Mobile Number", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Email";
              }
              return null;
            },
            style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            controller: MobilenumberController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:20, right: 280,),
          child: Text("State", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Email";
              }
              return null;
            },
            style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            controller: stateController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: Padding(padding: const EdgeInsets.all(8.0), child: Icon(Icons.arrow_forward_ios_rounded))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:20, right: 280,),
          child: Text("City", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Email";
              }
              return null;
            },
            style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            controller: cityController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon: Padding(padding: const EdgeInsets.all(8.0), child: Icon(Icons.arrow_forward_ios_rounded))),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(top:20, right: 180,left: 20),
          child: Text("Street(lnclude house number)", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Email";
              }
              return null;
            },
            style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            controller: streetController,
            decoration: InputDecoration(
              label: Text(
                "Street",
                style: TextStyle(color: Colors.grey),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: 248,
          height: 57,
          decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Address(),
                        ));
                  },
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Orders(),
                            ));
                      },
                      child: Text("Save", style: TextStyle(color: Colors.white, fontSize: 20))))),
        )
      ]),
    ]));
  }
}
