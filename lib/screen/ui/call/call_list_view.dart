import 'package:ets_driver/screen/ui/chat/chat_list/chat_view_model.dart';
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
                  return SizedBox(
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
                        const SizedBox(
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
                                    child: Row(
                                      children: [
                                        Icon(Icons.phone_missed_outlined , color: Colors.red, size: 13,),
                                        Text(
                                          ' Incoming | Dec 19,2024',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.call_outlined,
                                    
                                  )
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
