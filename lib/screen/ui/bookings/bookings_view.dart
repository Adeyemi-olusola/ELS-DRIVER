import 'package:ets_driver/screen/ui/bookings/active_booking/active_booking_view.dart';
import 'package:ets_driver/screen/ui/bookings/bookings_viewModel.dart';
import 'package:ets_driver/screen/ui/bookings/completed_booking/completed_booking_view.dart';
import 'package:ets_driver/screen/ui/call/call_list_view.dart';
import 'package:ets_driver/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BookingViewModel(),
        builder: (context, viewModel, child) {
          return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                //  leading: Text('My Booking'),

                bottom: TabBar(
                  indicatorWeight: 6,
                  labelColor: defaultTheme.primaryColor,
                  indicatorPadding: const EdgeInsets.only(top: 20),
                  indicatorColor: Theme.of(context).primaryColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Theme.of(context).primaryColor),
                  tabs: [
                    Text(
                      '  Active Trip ',
                      // style: Theme.of(context)
                      //     .textTheme
                      //     .bodySmall!
                      //     .copyWith(color: Colors.grey
                      //     ),
                    ),
                    Text(
                      'Completed',
                      // style: Theme.of(context)
                      //     .textTheme
                      //     .bodySmall!
                      //     .copyWith(color: Colors.grey),
                    ),
                   
                  ],
                ),

                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('My History'), Icon(Icons.search)],
                ),
              ),
              body: const TabBarView(
                children: [
                  ActiveBookingView(),
                 
                  CompletedBookingView()
                ],
              ),
            ),
          );
        });
  }
}
