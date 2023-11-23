import 'package:ets_driver/screen/ui/bookings/active_booking/active_booking_view_model.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/timeline/timeline_widget.dart';
import 'package:ets_driver/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:expandable/expandable.dart';

class ActiveBookingView extends StatefulWidget {
  const ActiveBookingView({super.key});

  @override
  State<ActiveBookingView> createState() => _ActiveBookingViewState();
}

class _ActiveBookingViewState extends State<ActiveBookingView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ActiveBookingViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ExpandablePanel(
                            theme: ExpandableThemeData(
                              iconColor: defaultTheme.cardColor,
                              tapBodyToCollapse: true,
                              hasIcon: false,
                              tapBodyToExpand: true,
                              tapHeaderToExpand: true,
                            ),
                            header: Container(
                              child: Column(
                                children: [
                                  // Initial Widget
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: const BoxDecoration(
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Daniel Austin',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                            color: Colors.white,
                                                            fontSize: 17,
                                                          ),
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                      width: 71,
                                                      child: MyButton(
                                                          text: 'Active'),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'mercedes-benz E-class',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                            color: Colors.grey,
                                                            fontSize: 12,
                                                          ),
                                                    ),
                                                    Text(
                                                      'HSW 4726 XK',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Divider(height: 2, color: Colors.grey,),
                                  ),


                                  // Icon
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            collapsed: const Text(''),
                            expanded: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 10, right: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.location_city,
                                                color: Colors.grey,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '4.5km',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.location_city,
                                                color: Colors.grey,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '4.5km',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.location_city,
                                                color: Colors.grey,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '4.5km',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Date & Time',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                          Text('Date & Time',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall)
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 20.0),
                                        height: 200.0,
                                        child: ListView(
                                          scrollDirection: Axis.vertical,
                                          children: const <Widget>[
                                            TimelineItem(
                                              title: 'Pickup',
                                              subTitle: 'From: 123 Main St',
                                              time: '10:00 AM',
                                              icon: Icons.store,
                                              isFirst: true,
                                            ),
                                            TimelineItem(
                                              title: 'Delivery',
                                              subTitle: 'To: 456 Oak St',
                                              time: '2:00 PM',
                                              icon: Icons.location_on,
                                              isLast: true,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const MyButton(text: 'Track Driver')
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
