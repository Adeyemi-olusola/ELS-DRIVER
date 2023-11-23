import 'package:ets_driver/screen/ui/wallet/topUpwithCardView/topUpwithCardViewModel.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TopUpWithCardView extends StatefulWidget {
  const TopUpWithCardView({super.key});

  @override
  State<TopUpWithCardView> createState() => _TopUpWithCardViewState();
}

class _TopUpWithCardViewState extends State<TopUpWithCardView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => TopUpWithCardViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).cardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Image.asset(
                              'assets/wallet_assets/mastercard_logo.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '*****************4679',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MyButton(text: 'Continue')
                ],
              ),
            ),
          ));
        });
  }
}
