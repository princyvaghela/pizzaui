import 'package:flutter/material.dart';
import 'package:pizzaui/welcome%20page.dart';

import 'Loginpage.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool ispassWordvaildtion = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset("assets/dg.jpg", fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 120),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200, left: 25),
                child: Text("Full name", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 230, right: 20),
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                        controller: nameController,
                        obscureText: false,
                        decoration: InputDecoration(
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Name";
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20, right: 260),
                        child: Text("E-mail", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1, top:10, right: 1),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                          controller: emailController,
                          obscureText: false,
                          decoration: InputDecoration(
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Email";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20, right: 230,),
                        child: Text("Password", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1, top: 10, right: 1),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                          controller: passwordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                ispassWordvaildtion ? Icons.visibility : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  ispassWordvaildtion = !ispassWordvaildtion;
                                });
                              },
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Password";
                            }
                            return null;
                          },
                          obscureText: !ispassWordvaildtion,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 580),
                  child: Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.deepOrange,
                    ),
                    child: Center(
                        child: InkWell(
                            onTap: () {
                              if (_formKey.currentState!.validate())
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(),
                                    ));
                            },
                            child: Text("SIGN UP", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 650, right: 29),
                child: Center(
                    child: Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 650, left: 260),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.deepOrange,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 720,left: 30),
                child: Row(
                  children: [
                    Container(
                      height: 1,
                      width: 100,
                      color: Colors.grey,
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "Sign up with",
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                      ),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 1,
                        width: 100,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 770,left: 25),
                    child: Container(
                      width: 147,
                      height: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          Icon(Icons.facebook, color: Colors.blue, size: 35),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "FACEBOOK",
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 770, right: 25),
                    child: Container(
                      width: 147,
                      height: 57,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          Image.asset(
                            "assets/google 4.png",
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              "GOOGLE",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ])
          ],
        ),
      ),
    );
  }
}
