import 'package:ets_driver/screen/ui/signUp/sigup_view_model.dart';
import 'package:ets_driver/screen/ui/signUp/verify_account_view.dart';
import 'package:ets_driver/screen/widgets/appbar/appBar_widget.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/dialog/dialog.dart';
import 'package:ets_driver/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class TransferView extends StatefulWidget {
  const TransferView({super.key});

  @override
  State<TransferView> createState() => _TransferViewState();
}

class _TransferViewState extends State<TransferView> {
  bool? isChecked = false;

  String selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: CustomAppBar(
                title: 'Transfer',
                showBackButton: true,
              ),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        InlineInput(
                          label: 'Account Number',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Select the business you want ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(color: Colors.grey)),
                          ],
                        ),
                        const SizedBox(height: 20),
                        DropdownButton<String>(
                          dropdownColor: Theme.of(context).cardColor,
                          //  icon: Icon(MdiIcons.arrowDown),
                          padding: const EdgeInsets.all(10),
                          style: Theme.of(context).textTheme.bodySmall,
                          underline: Container(),
                          isExpanded: true,
                          value: selectedOption,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedOption = newValue!;
                            });
                          },
                          items: <String>[
                            'Option 1',
                            'Option 2',
                            'Option 3',
                            'Option 4'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 20),
                        InlineInput(
                          label: 'Amount',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InlineInput(
                          label: 'Password',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MyButton(
                          text: 'Confirm',
                          onPressed: () {
                            DialogBox().showUsableDialog(
                                context,
                                'Top Up Sucessful',
                                'You have successfully top up your wallet ');
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}
