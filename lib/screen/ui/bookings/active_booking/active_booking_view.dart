import 'package:ets_rider/screen/ui/bookings/active_booking/active_booking_view_model.dart';
import 'package:ets_rider/screen/widgets/button/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'dart:math' as math;
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ExpandablePanel(
                          theme: ExpandableThemeData(
                              iconColor: Colors.white,
                              tapBodyToCollapse: true,
                              tapBodyToExpand: true,
                              tapHeaderToExpand: true),
                          header: Container(
                            child: Column(
                              children: [
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
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                              ),
                                            )),
                                        SizedBox(
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
                                                  Text('Daniel Austin',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 17)),
                                                  Container(
                                                      height: 30,
                                                      width: 71,
                                                      child: MyButton(
                                                          text: 'Active')),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text('mercedes-benz E-class',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12)),
                                                  Text('HSW 4726 XK',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12))
                                                ],
                                              )

                                              ,
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          collapsed: Text(""),
                          expanded: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_city,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(
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
                                            Icon(
                                              Icons.location_city,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(
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
                                            Icon(
                                              Icons.location_city,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(
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
                                    SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Date & Time' , style: Theme.of(context).textTheme.bodySmall,),
                                        Text('Date & Time',style: Theme.of(context).textTheme.bodySmall)
                                      ],
                                    )
                                    ,
                                    SizedBox(height: 20,),

                                    MyButton(text: 'Track Driver')
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
          );
        });
  }
}
