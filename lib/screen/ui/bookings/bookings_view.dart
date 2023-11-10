import 'package:ets_rider/screen/ui/bookings/active_booking/active_booking_view.dart';
import 'package:ets_rider/screen/ui/bookings/bookings_viewModel.dart';
import 'package:ets_rider/screen/ui/call/call_list_view.dart';
import 'package:ets_rider/screen/ui/chat/chat_list/chat_view.dart';
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
                  indicatorPadding: EdgeInsets.only(top: 20),
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
                    Text('  Active Now  '),
                    Text('Completed'),
                    Text('Cancelled'),
                  ],
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Tabs Demo'), Icon(Icons.search)],
                ),
              ),
              body: TabBarView(
                children: [
                  ChatsView(),
                  CallListView(),
                  ActiveBookingView()
                ],
              ),
            ),
          );
        });
  }
}
