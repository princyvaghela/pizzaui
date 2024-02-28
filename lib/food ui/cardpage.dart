import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'homepage.dart';
import 'new address save.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  TextEditingController promcontoller = TextEditingController();
  bool isIncrement = false;
  bool isremove = false;
  int counter = 0;
  int Counter = 0;
  List product = [
    {
      "image": "assets/azsf.jpg",
      "title": "Red n hot pizza",
      "text": "Spicy chicken, beef",
      "price": "\$ 15.30",
      "qty": 1,
    },
    {
      "image": "assets/dfsdsf.jpg",
      "title": "Greek salad ",
      "text": "with baked salmon",
      "price": "\$ 12.00",
      "qty": 2,
    },
  ];

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.to(Homepage());
            },
            child: Icon(Icons.arrow_back_ios_new_outlined, size: 20)),
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            "Cart",
            style: TextStyle(color: Color(0XFF303030), fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: product.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                            child: ClipRRect(
                                borderRadius: BorderRadiusDirectional.circular(20),
                                child: Image.asset(
                                  "${product[index]["image"]}",
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Text(
                                "${product[index]["title"]}",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "${product[index]["text"]}",
                                style: TextStyle(color: Color(0XFF8C8A9D), fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "${product[index]["price"]}",
                                    style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60, top: 10),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 5),
                                          child: InkWell(
                                            onTap: () {
                                              if (product[index]["qty"] > 1) {
                                                product[index]["qty"]--;
                                              }
                                              isIncrement = false;
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: MediaQuery.of(context).size.height / 27,
                                              width: MediaQuery.of(context).size.width / 12,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(17),
                                                  color: isIncrement == false ? Colors.deepOrange : Colors.white),

                                              child: Icon(Icons.remove, color: isIncrement == false ? Colors.white : Colors.deepOrange),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10, left: 10),
                                          child: Text("${product[index]["qty"]}", style: const TextStyle(fontSize: 25)),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            isIncrement = true;
                                            product[index]["qty"]++;
                                            setState(() {});
                                          },
                                          child: Container(
                                              height: MediaQuery.of(context).size.height / 27,
                                              width: MediaQuery.of(context).size.width / 12,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(17),
                                                  color: isIncrement == true ? Colors.deepOrange : Colors.white),
                                              child: Icon(Icons.add, color: isIncrement == false ? Colors.deepOrange : Colors.white)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0,right: 4,bottom: 45),
                          child: InkWell(
                            onTap: () {
                              product.removeAt(index);
                              setState(() {});
                            },
                            child: Icon(
                              Icons.close,
                              size: 15,
                              color: Colors.deepOrange,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 16, top: 20),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Email";
                  }
                  return null;
                },
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                controller: promcontoller,
                decoration: InputDecoration(
                    label: Text(
                      "Promo Code",
                      style: TextStyle(color: Colors.grey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(50)),
                        child: Center(child: Text("Apply", style: TextStyle(color: Colors.white))),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Subtotal",
                    style: TextStyle(color: Color(0XFF000000), fontSize: 20),
                  ),
                ),
                Spacer(),
                Text(
                  "\$27.30",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "USB",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                )
              ],
            ),
            Divider(color: Colors.black12, height: 25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Tax and Fees",
                    style: TextStyle(color: Color(0XFF000000), fontSize: 20),
                  ),
                ),
                Spacer(),
                Text(
                  "\$5.30",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "USD",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                )
              ],
            ),
            Divider(color: Colors.black12, height: 25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Delivery",
                    style: TextStyle(color: Color(0XFF000000), fontSize: 20),
                  ),
                ),
                Spacer(),
                Text(
                  "\$1.00",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "USB",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                )
              ],
            ),
            Divider(color: Colors.black12, height: 25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(color: Color(0XFF000000), fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("(2 items)", style: TextStyle(fontSize: 15, color: Color(0xffBEBEBE))),
                Spacer(),
                Text(
                  "\$33.60",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "USB",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 200,
              height: 50,
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
                      child: Text("CHECKOUT", style: TextStyle(color: Colors.white, fontSize: 20)))),
            )
          ],
        ),
      ]),
    );
  }
}
