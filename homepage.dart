import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepagestorybuilder.dart';

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
      home: const Homepage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key, required String title});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: Colors.white,
            child: Stack(
              children: [
                Container(
                  height: height * 0.06,
                  width: width,
                  //color: Colors.amber,
                  child: Row(children: [
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Container(
                      height: height,
                      width: width * 0.35,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4QsdmFQyAw0A28Zo3y5CcPYNA5yD7Y4GaLA&usqp=CAU'))),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                    Spacer(),
                    Icon(
                      CupertinoIcons.suit_heart,
                      size: width * 0.08,
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Container(
                      height: height,
                      width: width * 0.07,
                      // color: Colors.blue,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/128/1617/1617469.png'))),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    )
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.06),
                  child: Container(
                    height: height * 0.18,
                    width: width,
                    //color: Colors.blue,

                    child: ListView.builder(
                        itemCount: Apps.list.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Row(children: [
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Container(
                              width: width * 0.28,
                              height: height,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                      color: index == 3
                                          ? Color.fromARGB(255, 38, 247, 45)
                                          : Color.fromARGB(247, 40, 109, 237),
                                      width: 3,
                                      style: BorderStyle.solid)),
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      height: height * 0.255,
                                      width: width * 0.255,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(255, 215, 74, 8),
                                          image: DecorationImage(
                                              image: NetworkImage(Apps
                                                  .list[index].image
                                                  .toString()),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  index == 0
                                      ? Padding(
                                          padding: EdgeInsets.only(
                                              top: height * 0.12,
                                              left: width * 0.2),
                                          child: Container(
                                            height: height * 0.04,
                                            width: width * 0.06,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 2.5,
                                                    strokeAlign:
                                                        StrokeAlign.center)),
                                          ),
                                        )
                                      : Container(),
                                  index == 0
                                      ? Padding(
                                          padding: EdgeInsets.only(
                                              top: height * 0.122,
                                              left: width * 0.197),
                                          child: Icon(
                                            Icons.add_circle_outlined,
                                            color: Color.fromARGB(
                                                255, 24, 78, 160),
                                            size: width * 0.065,
                                          ),
                                        )
                                      : Container()
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                          ]);
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.24, bottom: height * 0.08),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: Apps.list2.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: height * 0.77,
                          width: width,
                          //color: Colors.green,
                          child: Column(
                            children: [
                              Container(
                                height: height * 0.07,
                                width: width,
                                decoration: BoxDecoration(
                                    // color: Colors.amber,
                                    border: Border(
                                        top: BorderSide(
                                            width: width * 0.0008,
                                            color: Colors.black),
                                        bottom: BorderSide(
                                            width: width * 0.0008,
                                            color: Colors.black))),
                                child: Row(children: [
                                  Container(
                                    height: height,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(Apps
                                                .list2[index].brand
                                                .toString()))),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text(
                                    Apps.list2[index].brandname.toString(),
                                    style: TextStyle(
                                        fontSize: width * 0.035,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Icon(
                                    Icons.verified_outlined,
                                    color: Color.fromARGB(255, 10, 136, 239),
                                  ),
                                  Spacer(),
                                  Icon(CupertinoIcons.ellipsis),
                                  SizedBox(
                                    width: width * 0.015,
                                  )
                                ]),
                              ),
                              Container(
                                height: height * 0.5,
                                width: width,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            Apps.list2[index].image.toString()),
                                        fit: BoxFit.fill)),
                              ),
                              Container(
                                height: height * 0.19,
                                width: width,
                                //color: Colors.blue,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Icon(
                                          Icons.favorite_border,
                                          size: width * 0.08,
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Icon(
                                          Icons.messenger_outline_sharp,
                                          size: width * 0.08,
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Icon(
                                          Icons.send,
                                          size: width * 0.08,
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.bookmark_border,
                                          size: width * 0.08,
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.005,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.03,
                                        ),
                                        Text(
                                            Apps.list2[index].likes.toString()),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.003,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          Apps.list2[index].brandname
                                              .toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        Text(Apps.list2[index].caption
                                            .toString())
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.003,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          "View all Comments",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 114, 114, 114)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.003,
                                    ),
                                    Container(
                                      height: height * 0.045,
                                      width: width,
                                      //color: Colors.amber,
                                      child: Row(children: [
                                        SizedBox(
                                          width: width * 0.03,
                                        ),
                                        Container(
                                          height: height,
                                          width: width * 0.1,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.green,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c21pbGluZyUyMGZhY2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                                                  fit: BoxFit.cover)),
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Text(
                                          "Add a comment... ",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 119, 118, 118)),
                                        )
                                      ]),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: width * 0.03,
                                        ),
                                        Text(
                                          Apps.list2[index].time.toString(),
                                          style: TextStyle(
                                              fontSize: width * 0.025,
                                              color: Color.fromARGB(
                                                  255, 121, 121, 121)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
