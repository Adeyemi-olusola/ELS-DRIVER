import 'package:ets_driver/screen/ui/signUp/sigup_view_model.dart';
import 'package:ets_driver/screen/ui/signUp/verify_account_view.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class VehicleRegistrationView extends StatefulWidget {
  const VehicleRegistrationView({super.key});

  @override
  State<VehicleRegistrationView> createState() =>
      _VehicleRegistrationViewState();
}

class _VehicleRegistrationViewState extends State<VehicleRegistrationView> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Vehicle Registration',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.displayLarge!),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InlineInput(
                      label: 'VIN Number',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'Vehicle Name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'Vehicle Model',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'Vehicle Year',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'Registration Expiring Date',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'License Plate Number',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'Title Number',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                      text: 'Continue',
                      onPressed: () {
                        Get.to(const RegistrationOtpView());
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
