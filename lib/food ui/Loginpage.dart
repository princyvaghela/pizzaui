import 'package:flutter/material.dart';
import 'package:pizzaui/food%20ui/homepage.dart';
import 'package:pizzaui/food%20ui/singuppage.dart';

import '../bottambar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool ispassWordvaildtion = false;
  bool isLoading = false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
                children:[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset("assets/dg.jpg",fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 30),
                    child: Container(
                      width:38,
                      height: 38,
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),

                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => SingUp(),));
                        },

                          child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,size: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 160),
                    child: Text("Login",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 230, right: 16),
                    child: Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top:20, right: 250,),
                            child: Text("E-mail", style: TextStyle(color: Color(0xff9796A1), fontSize: 15)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 1, top:10, right: 1),
                            child: TextFormField(
                              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                              controller: emailController,
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
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10, right: 220,left: 2),
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
               SizedBox(
              height: 20,
             ),
                  Padding(
                    padding: const EdgeInsets.only(top: 540),
                    child: Center(child: Text("Forgot password?",style: TextStyle(color: Colors.deepOrange,fontSize: 15,fontWeight: FontWeight.bold))),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 580),
                      child: Container(
                        width: 248,
                        height: 60,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                          color: Colors.deepOrange,
                        ),
                        child: Center(child: InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate())
                            Navigator.push(context,MaterialPageRoute(builder: (context) => BottombarScreen(),));
                          },

                            child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 20)))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 660,right: 40),
                    child: Center(child: Text("Don't have an account?",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 660,left: 240),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const SingUp(),));
                        },

                        child: Text("Sign Up",style: TextStyle(fontWeight:FontWeight.w400,fontSize: 17,color: Colors.deepOrange,),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top:700),
                    child: Row(
                      children: [
                        Container(
                          height: 1,
                          width: 100,
                          color: Colors.grey,
                        ),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Sign in with",style: TextStyle(fontSize: 15,color: Color(0xff5B5B5E)),
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
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
                        padding: const EdgeInsets.only(top: 750,left: 25),
                        child: Container(
                          width: 150,
                          height: 57,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 16,),
                              Icon(Icons.facebook,color: Colors.blue,size: 40),
                              Padding(
                                padding: const EdgeInsets.all(9),
                                child: Text("FACEBOOK",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 750,right: 25),
                        child: Container(
                          width: 150,
                          height: 57,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Image.asset("assets/google 4.png",),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text("GOOGLE",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ]
            )
          ],
        ),
      ),
    );
  }
}
