import 'package:ets_rider/screen/ui/wallet/add_new_card/add_new_card_model.dart';
import 'package:ets_rider/screen/widgets/button/button.dart';
import 'package:ets_rider/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AddNewCardView extends StatefulWidget {
  const AddNewCardView({super.key});

  @override
  State<AddNewCardView> createState() => _AddNewCardViewState();
}

class _AddNewCardViewState extends State<AddNewCardView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AddNewCardViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    InlineInput(
                      label: 'CardHolder Name',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'CardHolder Name',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InlineInput(
                            label: 'CardHolder Name',
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: InlineInput(
                            label: 'CardHolder Name',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    MyButton(text: 'Fund Wallet')
                  ],
                ),
              ),
            ),
          );
        });
  }
}
