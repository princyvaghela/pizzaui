import 'package:flutter/material.dart';
import 'package:get/get.dart';



import 'Food Details.dart';
import 'Loginpage.dart';
import 'My Profile.dart';
import 'My orders.dart';
import 'Reviewspage.dart';
import 'settingpage.dart';
import 'new address save.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController searchController = TextEditingController();
  int selectedName = 0;
  List princy = [
    {"pic": "assets/45.jpg", "name": "Burger"},
    {"pic": "assets/12.jpg", "name": "Donat"},
    {"pic": "assets/ghj.jpg", "name": "Pizza"},
    {"pic": "assets/HGFDS.jpg", "name": "Mexican"},
    {"pic": "assets/8765.jpg", "name": "Asian"},
  ];




  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,

      drawer: Drawer(
          backgroundColor: Colors.white,
          child: Center(
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Image.asset("assets/jukhg.png",width: 150,height:150,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Farion Wick",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:19),
                    child: Text("farionwick@gmail.com",style: TextStyle(fontSize: 17,color: Color(0xff9EA1B1))),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ListTile(
                    leading: const Icon(Icons.menu,color: Colors.grey),
                    title: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Orders(),));
                      },
                      child: const Text("My Orders",style: TextStyle(fontWeight: FontWeight.bold,),
                          ),
                    ),
                    onTap: () {
                      setState(() {

                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person,color: Colors.grey),
                    title: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => MyProfile(),));
                      },
                      child: const Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold,),
                          ),
                    ),
                    onTap: () {
                      setState(() {

                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.room,color: Colors.grey),
                    title: InkWell(
                      onTap: () {
                        Get.to(Address());
                      },
                      child: const Text("Delivery Address",style: TextStyle(fontWeight: FontWeight.bold,),
                          ),
                    ),
                    onTap: () {
                      setState(() {

                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.payment,color: Colors.grey),
                    title: const Text("Payment Methods",style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                    onTap: () {
                      setState(() {

                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.email,color: Colors.grey),
                    title: const Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                    onTap: () {
                      setState(() {

                      });
                    },
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(Settings());
                    },
                    child: ListTile(
                      leading: const Icon(Icons.settings,color: Colors.grey),
                      title: const Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,),
                          ),

                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.star,color: Colors.grey),
                    title: InkWell(
                      onTap: () {
                        Get.to(Reviews());
                      },
                      child: const Text("Reviews",style: TextStyle(fontWeight: FontWeight.bold,),
                          ),
                    ),

                    onTap: () {
                      setState(() {

                      });
                    },
                  ),


                  Padding(
                    padding: const EdgeInsets.only(right: 90,top:0,left: 25),
                    child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(50),
                        ),

                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(50)),
                                child: Icon(Icons.power_settings_new_outlined,color: Colors.deepOrange,)),
                            SizedBox(
                              width: 10,
                            ),
                            Center(child: InkWell(
                              onTap: () {
                                Get.to(Login());
                              },
                              child: Text("Log Out",style: TextStyle(color: Colors.white,
                                  fontSize: 15,),),
                            )),
                          ],
                        )


                    ),
                  ),
                ],

              ))),

      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 20,
                  ),
                  InkWell(
                      onTap: () {
                        globalKey.currentState!.openDrawer();

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top:20 ),
                        child: Image.asset("assets/2356.jpg",width: 20,height: 20,),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    // child: Icon(Icons.menu),
                  ),

                  SizedBox(
                    height: 0,
                    width: 90,
                  ),
                  Text(
                    "Deliver to",
                    style: TextStyle(
                      color: Color(0XFF8C9099),
                    ),
                  ),
                  Icon(
                    Icons.expand_more_outlined,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:80,top: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/image 14.jpg",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

        Padding(
            padding: const EdgeInsets.only(left: 110,),
            child: Text("4102  Pretty View Lane ", style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.normal),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26,),
            child: Text("What would you like\n to order",
           style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 260,
                  height: 55,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Email";
                      }
                      return null;
                    },
                    style: const TextStyle(color: Colors.black, fontSize: 19, fontWeight: FontWeight.w500),
                    controller: searchController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded, color: Colors.black87),
                      label: Text(
                        "Find for food or restaurant..",style: TextStyle(color: Colors.grey,fontSize: 13),
                      ),
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
                          ),)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Image.asset(
                  "assets/search.jpg",
                  width: 25,
                  height: 25,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,

              itemCount: princy.length,
              itemExtent: 85,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        selectedName = index;
                        debugPrint("index$index");
                        debugPrint("selectedName$selectedName");
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          height: 98,
                          width: 59,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(50),
                            color: index == selectedName
                                ? Colors.deepOrange : Colors.white60,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      "${princy[index]["pic"]}",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Text("${princy[index]["name"]}"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28,top:1),
                child: Text(
                  "Featured Restaurants",
                  style: TextStyle(fontSize: 20, color:  Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 50,

              ),
              Text("View All >",style: TextStyle(color: Colors.deepOrange,fontSize: 15)),
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(FoodDetails());
                        },
                        child: Container(
                          height: 250,
                          width: 250,
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/pizza.jpg"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "McDonald's",
                                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.check_circle, color: Color(0xff029094), size: 20),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset("assets/Group 17504.jpg",width: 15,height: 15),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5,),
                                        child: Text(
                                          "Free delivery",
                                          style: TextStyle(color: Color(0xff7E8392), fontSize: 13),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Icon(
                                        Icons.alarm,
                                        color: Colors.deepOrange,
                                      ),
                                      Text(
                                        "10-15 mins",
                                        style: TextStyle(color: Color(0XFF7E8392),fontSize: 13),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Container(
                                          width: 54,
                                          height: 22,
                                          decoration: BoxDecoration(
                                            color: Color(0XFFF6F6F6),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Text("BURGER", style: TextStyle(color: Color(0XFF7E8392))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 54,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: Color(0XFFF6F6F6),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text("CHICKE", style: TextStyle(color: Color(0XFF7E8392))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: Color(0XFFF6F6F6),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text("FAST FOOD", style: TextStyle(color: Color(0XFF7E8392))),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 16, top: 10),
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
                                          Text("4.5",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold
                                              )),
                                          Icon(Icons.star, color: Color(0XFFFFC529), size: 15),
                                          Text(
                                            "(25+)",
                                            style: TextStyle(color: Color(0XFF9796A1),fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 205,
                                  top: 10,
                                ),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Icon(Icons.favorite, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 250,
                        width: 250,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Image.asset("assets/1.jpg"),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Starbuck",
                                      style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.check_circle, color: Color(0xff029094), size: 20),
                                  ],
                                ),

                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset("assets/Group 17504.jpg",width: 15,height: 15),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,),
                                      child: Text(
                                        "Free delivery",
                                        style: TextStyle(color: Color(0xff7E8392), fontSize: 13),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Icon(
                                      Icons.alarm,
                                      color: Colors.deepOrange,
                                    ),
                                    Text(
                                      "10-15 mins",
                                      style: TextStyle(color: Color(0XFF7E8392),fontSize: 13),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        width: 54,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: Color(0XFFF6F6F6),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text("BURGER", style: TextStyle(color: Color(0XFF7E8392))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 54,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        color: Color(0XFFF6F6F6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text("CHICKE", style: TextStyle(color: Color(0XFF7E8392))),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 80,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        color: Color(0XFFF6F6F6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text("FAST FOOD", style: TextStyle(color: Color(0XFF7E8392))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16, top: 10),
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
                                      Text("4.7",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold
                                          )),
                                      Icon(Icons.star, color: Color(0XFFFFC529), size: 15),
                                      Text(
                                        "(99+)",
                                        style: TextStyle(color: Color(0XFF9796A1),fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 205,
                                top: 10,
                              ),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.favorite, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("Popular Items",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          Container(
                            width: 140,
                            height: 220,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "assets/salmon.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 30),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Container(
                                          width: 55,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "\$",
                                                  style: TextStyle(color: Colors.deepOrange, fontSize: 10),
                                                ),
                                                Text("5.50", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            color: Color(0XFF9796A1),
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Icon(Icons.favorite, color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 140, left: 16,),
                                  child: Container(
                                    width: 70,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5,),
                                      child: Row(
                                        children: [
                                          Text("4.5", style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold)),
                                          Icon(Icons.star, color: Color(0XFFFFC529), size: 20),
                                          Text("(25+\n)", style: TextStyle(fontSize: 10)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16, top: 170),
                                  child: Text(
                                    "Salmon Salad",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16, top:190),
                                  child: Text(
                                    "Baked Salmom fish",
                                    style: TextStyle(color: Color(0XFFB3B3B3),fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,right: 30),
                        child: Container(
                          width: 140,
                          height: 220,

                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    "assets/salad.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 30),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Container(
                                        width: 55,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 5,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                "\$",
                                                style: TextStyle(color: Colors.deepOrange, fontSize: 10),
                                              ),
                                              Text("8.25", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width:40,
                                    ),
                                    Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: Icon(Icons.favorite, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 140, left: 16),
                                child: Container(
                                  width: 70,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Text("4.5", style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold)),
                                        Icon(Icons.star, color: Color(0XFFFFC529), size: 20),
                                        Text("(25+\n)", style: TextStyle(fontSize: 10)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, top: 170),
                                child: Text(
                                  "Salmon Salad",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, top: 190),
                                child: Text(
                                  "Baked Salmom fish",
                                  style: TextStyle(color: Color(0XFFB3B3B3),fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
