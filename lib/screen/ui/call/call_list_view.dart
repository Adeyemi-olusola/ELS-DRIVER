import 'package:ets_rider/screen/ui/chat/chat_list/chat_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CallListView extends StatefulWidget {
  const CallListView({super.key});

  @override
  State<CallListView> createState() => _CallListViewState();
}

class _CallListViewState extends State<CallListView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ChatViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                              borderRadius: BorderRadius.circular(2000)),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Daniel Austin',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                  ),
                                  Container(
                                    child: Text(
                                      '13',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.call ,color: Colors.white,)
                                
                                 
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    height: 20,
                  );
                },
                itemCount: 3),
          );
        });
  }
}
