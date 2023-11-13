import 'package:ets_rider/screen/ui/wallet/topUp_wallet/topUp_wallet_view_model.dart';
import 'package:ets_rider/screen/widgets/button/button.dart';
import 'package:ets_rider/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TopUpWalletView extends StatefulWidget {
  const TopUpWalletView({super.key});

  @override
  State<TopUpWalletView> createState() => _TopUpWalletViewState();
}

class _TopUpWalletViewState extends State<TopUpWalletView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => TopUpViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Enter the amount of top up',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 2)),
                  height: 110,
                  child: Center(child: InlineInput()),
                ),
                GridView.count(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 2,
                    shrinkWrap: true,
                    children: List.generate(
                        9,
                        (index) => Container(
                            //height: ,
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                    width: 2)),
                            child: Center(
                              child: Text(
                                'NGN${100 * index}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: Theme.of(context).primaryColor),
                              ),
                            ))).toList(),
                    crossAxisCount: 3),
                SizedBox(
                  height: 20,
                ),
                MyButton(text: 'Continue')
              ],
            ),
          ));
        });
  }
}
