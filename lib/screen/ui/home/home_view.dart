import 'package:ets_driver/screen/ui/chat/chat_detail.dart/chat_detail_view.dart';
import 'package:ets_driver/screen/ui/home/passanger_details/passanger_details.dart';
import 'package:ets_driver/screen/ui/notification/notification_view.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/divider/divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double containerHeight = 200.0;
  bool isContainerOpen = false;

  void toggleContainer() {
    setState(() {
      isContainerOpen = !isContainerOpen;
      containerHeight = isContainerOpen ? 100.0 : 200.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Your main content goes here
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                ),
                InkWell(
                  onTap: () {
                    Get.to(NotificationView());
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(
                      Icons.notifications,
                      size: 17,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          // Animated container at the bottom
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AnimatedContainer(
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: containerHeight,
                child: GestureDetector(
                    //   onTap: () {
                    //  //   toggleContainer();
                    //   },
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          height: 5,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(PassangerDetailsView());
                                },
                                child: CircleAvatar(
                                  radius: 20,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Daniel Austin',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    'George Towm',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(ChatScreen());
                                },
                                child: CircleAvatar(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  radius: 20,
                                  child: Icon(
                                    Icons.chat_bubble_outline,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              CircleAvatar(
                                backgroundColor: Theme.of(context).primaryColor,
                                radius: 20,
                                child: Icon(
                                  Icons.call,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      DividerWidget(),
                      Container(
                        height: 45,
                        child: Row(
                          children: [
                            Expanded(child: GreyButton(text: 'Dismiss')),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(child: MyButton(text: 'Accept')),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
