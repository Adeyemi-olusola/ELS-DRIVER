import 'package:ets_driver/screen/ui/signUp/sigup_view_model.dart';
import 'package:ets_driver/screen/ui/signUp/verify_account_view.dart';
import 'package:ets_driver/screen/widgets/appbar/appBar_widget.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class UpdateVehicleRegistrationView extends StatefulWidget {
  const UpdateVehicleRegistrationView({super.key});

  @override
  State<UpdateVehicleRegistrationView> createState() =>
      _UpdateVehicleRegistrationViewState();
}

class _UpdateVehicleRegistrationViewState
    extends State<UpdateVehicleRegistrationView> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: CustomAppBar(
                title: 'Vechile Name and Number',
                showBackButton: true,
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                   
                       
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
