import 'package:ets_driver/screen/ui/reservation/reservation_view_model.dart';
import 'package:ets_driver/screen/ui/signUp/get_you_in.dart';
import 'package:ets_driver/screen/widgets/appbar/appBar_widget.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class SelectCountryView extends StatefulWidget {
  const SelectCountryView({super.key});

  @override
  State<SelectCountryView> createState() => _SelectCountryViewState();
}

class _SelectCountryViewState extends State<SelectCountryView> {
  String selectedValue = '';

  List<String> options = ['Nigeria', 'Canada', 'United State Of America'];
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => RevervationViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: CustomAppBar(title: 'Country Selection', ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select the country you will be using this app from',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Column(
                          children: List.generate(
                              options.length,
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
                                                    options[index],
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall,
                                                  ),
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
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      MyButton(
                        text: 'Continue',
                        onPressed: () {
                          Get.to(const GetInView());
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
