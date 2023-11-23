import 'package:ets_driver/screen/ui/reservation/reservation_view_model.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ApplyPromoCodeView extends StatefulWidget {
  const ApplyPromoCodeView({super.key});

  @override
  State<ApplyPromoCodeView> createState() => _ApplyPromoCodeViewState();
}

class _ApplyPromoCodeViewState extends State<ApplyPromoCodeView> {
  String selectedValue = '';

  List<String> options = ['Option 1', 'Option 2', 'Option 3'];
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => RevervationViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose one out of the options',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Column(
                        children: List.generate(
                            2,
                            (index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xff1F222A)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  'FDFDF',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall,
                                                ),
                                                Text('FDFDF',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall!
                                                        .copyWith(
                                                            color: Colors.grey,
                                                            fontSize: 12))
                                              ],
                                            ),
                                            Radio(
                                              value: options[index],
                                              activeColor: Theme.of(context)
                                                  .primaryColor,
                                              groupValue: selectedValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedValue =
                                                      value.toString();
                                                });
                                              },
                                            )
                                          ],
                                        ),
                                      )),
                                ))),
                    // ListView(
                    //   shrinkWrap: true,
                    //   children: options
                    //       .map(
                    //         (option) => RadioListTile(
                    //           title: Text(option),
                    //           value: option,
                    //           groupValue: selectedValue,
                    //           onChanged: (value) {
                    //             setState(() {
                    //               selectedValue = value.toString();
                    //             });
                    //           },
                    //         ),
                    //       )
                    //       .toList(),
                    // )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(color: Color(0xff1F222A)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  style: Theme.of(context).textTheme.bodySmall,
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
                                  style: Theme.of(context).textTheme.bodySmall,
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
                                  style: Theme.of(context).textTheme.bodySmall,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const MyButton(text: 'Continue'),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
