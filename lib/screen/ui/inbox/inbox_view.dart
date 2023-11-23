import 'package:ets_driver/screen/ui/call/call_list_view.dart';
import 'package:ets_driver/screen/ui/chat/chat_list/chat_view.dart';
import 'package:ets_driver/screen/ui/inbox/inbox_view_model.dart';
import 'package:ets_driver/utils/themes.dart';
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
                  padding: EdgeInsets.symmetric(horizontal: 20,),
                  indicatorWeight: 6,
                  indicatorPadding: const EdgeInsets.only(top: 20),
                  indicatorColor: Theme.of(context).primaryColor,
                  //indicatorSize: TabBarIndicatorSize.label,
                  labelColor: defaultTheme.primaryColor,
                  unselectedLabelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Theme.of(context).primaryColor),
                  tabs: const [
                    Text('Chats'),
                    Text('Calls'),
                  ],
                ),
                title:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('InBox' , style: defaultTheme.textTheme.labelMedium!.copyWith(color: Colors.white),), Icon(Icons.search)],
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: const TabBarView(
                  children: [ChatsView(), CallListView()],
                ),
              ),
            ),
          );
        });
  }
}
