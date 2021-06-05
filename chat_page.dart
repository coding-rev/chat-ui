import 'package:cryptude/constants/constant.dart';
import 'package:cryptude/screens/components/background_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatWithSupportPage extends StatefulWidget {
  @override
  _ChatWithSupportPageState createState() => _ChatWithSupportPageState();
}

class _ChatWithSupportPageState extends State<ChatWithSupportPage> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        // Stack item - 1
        // Background Headers
        BackgroundImage(),

        // Stack item - 2
        // Widgets on the Background Headers
        SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(
                  top: deviceSize.height * 0.02,
                  left: deviceSize.width * 0.02,
                  right: deviceSize.width * 0.02),
              child: Row(
                children: [
                  IconButton(
                    iconSize: 30.0,
                    icon:
                        Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("assets/photos/emmanuel.jpg"),
                  ),
                  SizedBox(width: deviceSize.width * 0.01),
                  Text('Chat with support', style: TEXT_HEADER_TWO)
                ],
              ),
            ),
            // Background Chat Icon
            Center(
              child: IconButton(
                iconSize: 110,
                icon: Icon(Icons.bubble_chart, color: Colors.grey[600]),
                onPressed: () {},
              ),
            ),
          ]),
        ),
        // Stack - 3
        // White Page Begins Here
        Padding(
          padding: EdgeInsets.only(
              top: deviceSize.height * 0.29,
              left: deviceSize.width * 0.03,
              right: deviceSize.width * 0.03),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
                color: Colors.grey[300],
              ),
              // Body Content
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Container(
                      // Main Column
                      child: Column(
                        children: [
                          Column(children: [
                            Text('hello how are you please how are you doing',
                                style: TextStyle(fontSize: 90)),
                            Text('hello how are you please how are you doing',
                                style: TextStyle(fontSize: 90)),
                            Text('hello how are you please how are you doing',
                                style: TextStyle(fontSize: 90)),
                          ]),
                          Column(
                            children: [
                              Container(
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Column item -1
                                  SizedBox(),
                                  // Column item -2
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 5, top: 10),
                                    height: 60,
                                    width: double.infinity,
                                    color: Colors.grey[300],
                                    child: Row(
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "Write message...",
                                                hintStyle: TextStyle(
                                                    color: Colors.black54),
                                                border: InputBorder.none),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        FloatingActionButton(
                                          onPressed: () {},
                                          child: Icon(
                                            Icons.send,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                          backgroundColor: Colors.blue,
                                          elevation: 0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ]),
    );
  }
}
