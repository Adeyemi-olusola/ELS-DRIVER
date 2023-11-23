import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/timeline/timeline_widget.dart';
import 'package:ets_driver/utils/themes.dart';
import 'package:flutter/material.dart';

class PassangerDetailsView extends StatefulWidget {
  const PassangerDetailsView({super.key});

  @override
  State<PassangerDetailsView> createState() => _PassangerDetailsViewState();
}

class _PassangerDetailsViewState extends State<PassangerDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Daniel Austin',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 17),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              radius: 20,
                              child: const Icon(
                                Icons.star,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '4.8',
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              radius: 20,
                              child: const Icon(
                                Icons.chat_bubble_outline,
                                color: Colors.black,
                                size: 17,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Message',
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              radius: 20,
                              child: const Icon(
                                Icons.call_outlined,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Calls',
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: defaultTheme.cardColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Destination',
                          style: defaultTheme.textTheme.bodySmall,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: const <Widget>[
                            TimelineItem(
                              title: 'From',
                              subTitle: 'From: 123 Main St',
                              time: '10:00 AM',
                              icon: Icons.store,
                              isFirst: true,
                            ),
                            TimelineItem(
                              title: 'To',
                              subTitle: 'To: 456 Oak St',
                              time: '2:00 PM',
                              icon: Icons.location_on,
                              isLast: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyButton(text: 'Let Go!')
              ],
            ),
          ),
          Container(
            //height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              border: Border.all(color: Color(0xff35383F)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Amount',
                    style: defaultTheme.textTheme.bodySmall,
                  ), 
            
                  Text(
                    'NGN 5000000',
                    style: defaultTheme.textTheme.titleLarge!.copyWith(color: defaultTheme.primaryColor , fontSize: 26),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
