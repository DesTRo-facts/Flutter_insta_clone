//import 'dart:html';

//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/bottombar.dart';
import 'package:instagram/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double? height, width;
  int index = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: PageView(
            //physics: NeverScrollableScrollPhysics(),
            controller: controller,
            onPageChanged: (value) {
              print(value);
              setState(() {
                index = value;
              });
            },
            children: [
              Container(
                height: height,
                width: width,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Container(
                      height: height! * 0.05,
                      width: width,
                      //color: Colors.amber,
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "English (India) ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 202, 200, 200)),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Color.fromARGB(255, 129, 128, 128),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: height! * 0.2,
                    ),
                    Container(
                      height: height! * 0.07,
                      width: width,
                      decoration: BoxDecoration(
                          //color: Colors.white,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4QsdmFQyAw0A28Zo3y5CcPYNA5yD7Y4GaLA&usqp=CAU"))),
                    ),
                    Container(
                      height: height! * 0.55,
                      width: width,
                      //color: Colors.black,
                      child: Column(children: [
                        SizedBox(
                          height: height! * 0.01,
                        ),
                        Container(
                          height: height! * 0.06,
                          width: width! * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(255, 247, 247, 247)),
                          child: Row(
                            children: [
                              Text(
                                "    Phone number, email or username",
                                style: TextStyle(
                                    fontSize: width! * 0.026,
                                    color: Color.fromARGB(255, 147, 147, 147)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height! * 0.015,
                        ),
                        Container(
                          height: height! * 0.06,
                          width: width! * 0.85,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(255, 247, 247, 247)),
                          child: Row(
                            children: [
                              Text(
                                "    Password",
                                style: TextStyle(
                                    fontSize: width! * 0.026,
                                    color: Color.fromARGB(255, 147, 147, 147)),
                              ),
                              Spacer(),
                              Icon(
                                CupertinoIcons.eye_fill,
                                size: width! * 0.032,
                                color: Color.fromARGB(255, 108, 107, 107),
                              ),
                              SizedBox(
                                width: width! * 0.04,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height! * 0.015,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints.tightFor(
                            height: height! * 0.06,
                            width: width! * 0.85,
                          ),
                          child: ElevatedButton(
                            child: Text("Login"),
                            onPressed: () {
                              controller.jumpToPage(1);
                            },
                          ),
                        ),
                        SizedBox(
                          height: height! * 0.01,
                        ),
                        Container(
                          height: height! * 0.06,
                          width: width! * 0.85,
                          //color: Colors.black,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Forgot your login details?",
                                  style: TextStyle(
                                      fontSize: width! * 0.03,
                                      color: Colors.grey),
                                ),
                                Text(
                                  " Get help logging in.",
                                  style: TextStyle(
                                      fontSize: width! * 0.03,
                                      color:
                                          Color.fromARGB(255, 112, 112, 112)),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: height! * 0.01,
                        ),
                        Container(
                          height: height! * 0.12,
                          width: width! * 0.85,
                          //color: Colors.green,
                          child: Column(
                            children: [
                              Container(
                                height: height! * 0.045,
                                width: width! * 0.85,
                                // color: Colors.amber,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: height! * 0.002,
                                        width: width! * 0.39,
                                        color:
                                            Color.fromARGB(255, 214, 213, 213),
                                      ),
                                      Text(
                                        " OR ",
                                        style: TextStyle(
                                            fontSize: width! * 0.025,
                                            color: Color.fromARGB(
                                                255, 140, 140, 140)),
                                      ),
                                      Container(
                                        height: height! * 0.002,
                                        width: width! * 0.39,
                                        color:
                                            Color.fromARGB(255, 214, 213, 213),
                                      ),
                                    ]),
                              ),
                              Container(
                                height: height! * 0.07,
                                width: width! * 0.85,
                                // color: Colors.amber,
                                child: Center(
                                  child: Text(
                                    "Log in with Facebook",
                                    style: TextStyle(
                                        fontSize: width! * 0.035,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Spacer(),
                    Container(
                      height: height! * 0.05,
                      width: width,
                      //color: Colors.green,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  fontSize: width! * 0.027, color: Colors.grey),
                            ),
                            Text(
                              " Sign up.",
                              style: TextStyle(
                                  fontSize: width! * 0.027,
                                  color: Color.fromARGB(255, 98, 98, 98)),
                            )
                          ]),
                    )
                  ],
                ),
              ),
              Navbar(),
            ]),
      ),
    );
  }
}
