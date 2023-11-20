import 'package:ets_rider/screen/ui/reservation/resevation_view.dart';
import 'package:ets_rider/screen/widgets/button/button.dart';
import 'package:ets_rider/screen/widgets/input/underlineInput.dart';
import 'package:ets_rider/screen/widgets/timeline/custom_timeline_widget.dart';
import 'package:ets_rider/screen/widgets/timeline/timeline_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UberFrontPage extends StatefulWidget {
  @override
  _UberFrontPageState createState() => _UberFrontPageState();
}

class _UberFrontPageState extends State<UberFrontPage> {
  double initialHeight = 1 / 3;
  double expandedHeight = 1 / 1.5;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      showModalBottomSheet(
        context: context,
        isDismissible: false,

        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        //isScrollControlled: true,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: BottomModalContent(
              initialHeight: initialHeight,
              expandedHeight: expandedHeight,
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // You can replace this with an actual map widget or background image
        color: Colors.grey[300],
      ),
      // Add your other widgets here
    );
  }
}

class BottomModalContent extends StatefulWidget {
  final double initialHeight;
  final double expandedHeight;

  BottomModalContent({
    required this.initialHeight,
    required this.expandedHeight,
  });

  @override
  _BottomModalContentState createState() => _BottomModalContentState();
}

class _BottomModalContentState extends State<BottomModalContent> {
  double currentHeight = 0.0;

  var locationController = TextEditingController();
  List<CustomTimeLineWidget> timelineWidgets = [];
  var count;
  bool? isDone = false;

  @override
  void initState() {
    super.initState();
    // Set the initial height
    currentHeight = widget.initialHeight;
  }

  void toggleHeight() {
    setState(() {
      // Toggle between initial and expanded height
      currentHeight = (currentHeight == widget.initialHeight)
          ? widget.expandedHeight
          : widget.initialHeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: MediaQuery.of(context).size.height * currentHeight,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: isDone!
              ? bookingDoneScreen()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: currentHeight == widget.initialHeight
                          ? [
                              Text('Select Address',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: Colors.white)),
                            ]
                          : [
                              Icon(Icons.close),
                              Text('Select Address',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(color: Colors.white)),
                              Container(
                                height: 16,
                                width: 16,
                              )
                            ],
                    ),
                    SizedBox(height: 20.0),
                    // Add additional content or options for selecting destination\

                    InlineInput(
                      suffixWidget: Icon(
                        Icons.map,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        toggleHeight();
                      },
                    ),

                    SingleChildScrollView(
                      child: Column(
                        children: currentHeight == widget.initialHeight
                            ? []
                            : [
                                ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: <Widget>[
                                    CustomTimeLineWidget(
                                      textController: locationController,
                                      time: 'vgg',
                                      icon: Icons.store,
                                      isFirst: true,
                                    ),
                                    // ...timelineWidgets,
                                    // InkWell(
                                    //   onTap: () {
                                    //     count++;

                                    //     timelineWidgets.add(
                                    //       generateCustomTimeLineWidget(count),
                                    //     );
                                    //   },
                                    //   child: Text(
                                    //     'Add More Destination',
                                    //     style: Theme.of(context)
                                    //         .textTheme
                                    //         .bodySmall!
                                    //         .copyWith(
                                    //             color: Theme.of(context).primaryColor,
                                    //             fontSize: 10),
                                    //   ),
                                    // ),
                                    CustomTimeLineWidget(
                                      textController: locationController,
                                      time: 'vgg',
                                      icon: Icons.abc_rounded,
                                      isFirst: false,
                                      isLast: true,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 40),
                                  child: Container(
                                      height: 40,
                                      child: MyButton(
                                        text: 'Done',
                                        onPressed: () {
                                          setState(() {
                                            isDone = true;
                                          });
                                        },
                                      )),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Color(0xff35383F),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.bookmark_outline,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Text(
                                          'Saved Places ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                      color: Theme.of(context).primaryColor,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Color(0xff35383F),
                                  ),
                                ),
                                ListView.separated(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 5,
                                    separatorBuilder: (context, index) {
                                      return Container(
                                        child: SizedBox(
                                          height: 20,
                                        ),
                                      );
                                    },
                                    itemBuilder: (context, index) {
                                      return Row(
                                        children: [
                                          Container(
                                              height: 50,
                                              width: 50,
                                              child: Icon(
                                                  Icons.repeat_on_outlined)),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Eleonora Hotel',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text('Eleonora Hotel',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall!
                                                            .copyWith(
                                                                color: Colors
                                                                    .grey)!),
                                                  ],
                                                ),
                                                Text(
                                                  '2.9km',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      );
                                    })
                              ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget bookingDoneScreen() {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Container(
          height: 5,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(20)),
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Distance',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            'Distance',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ]),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              TimelineItem(
                title: 'Pickup',
                subTitle: 'From: 123 Main St',
                time: '10:00 AM',
                icon: Icons.store,
                isFirst: true,
                showEditIcon: true,
              ),
              TimelineItem(
                title: 'Delivery',
                subTitle: 'To: 456 Oak St',
                time: '2:00 PM',
                icon: Icons.location_on,
                isLast: true,
                showEditIcon: true,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Divider(
            height: 1,
            thickness: 1,
            color: Color(0xff35383F),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MyButton(
          text: 'Continue to order',
          onPressed: () {
            Get.to(ReservationView());
          },
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
