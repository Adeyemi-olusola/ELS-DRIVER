import 'package:ets_driver/screen/ui/signUp/sigup_view_model.dart';
import 'package:ets_driver/screen/ui/signUp/verify_account_view.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class UpdateEmergencyContact extends StatefulWidget {
  const UpdateEmergencyContact({super.key});

  @override
  State<UpdateEmergencyContact> createState() => _UpdateEmergencyContactState();
}

class _UpdateEmergencyContactState extends State<UpdateEmergencyContact> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('  Emergency Contact',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.displayLarge!),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  
                    const SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'Full name of contact',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'Phone number',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InlineInput(
                      label: 'Address',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                      text: 'Continue ',
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
