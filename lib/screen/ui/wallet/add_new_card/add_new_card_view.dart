import 'package:ets_driver/screen/ui/wallet/add_new_card/add_new_card_model.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/input/underlineInput.dart';
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
                    const SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'CardHolder Name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InlineInput(
                            label: 'CardHolder Name',
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: InlineInput(
                            label: 'CardHolder Name',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const MyButton(text: 'Fund Wallet')
                  ],
                ),
              ),
            ),
          );
        });
  }
}
