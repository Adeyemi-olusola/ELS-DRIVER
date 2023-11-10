import 'package:ets_rider/screen/ui/bookings/active_booking/active_booking_view.dart';
import 'package:ets_rider/screen/ui/bookings/bookings_viewModel.dart';
import 'package:ets_rider/screen/ui/call/call_list_view.dart';
import 'package:ets_rider/screen/ui/chat/chat_list/chat_view.dart';
import 'package:ets_rider/screen/ui/inbox/inbox_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class InboxView extends StatefulWidget {
  const InboxView({super.key});

  @override
  State<InboxView> createState() => _InboxViewState();
}

class _InboxViewState extends State<InboxView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => InboxViewModel(),
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
                    Text('Chats'),
                    Text('Calls'),
          
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
                  CallListView()
             
                  
                  
                ],
              ),
            ),
          );
        });
  }
}
