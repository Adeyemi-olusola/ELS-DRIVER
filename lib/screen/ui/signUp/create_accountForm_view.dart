import 'package:ets_driver/screen/ui/signUp/sigup_view_model.dart';
import 'package:ets_driver/screen/ui/signUp/verify_account_view.dart';
import 'package:ets_driver/screen/widgets/appbar/appBar_widget.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class CreateAccountFormView extends StatefulWidget {
  const CreateAccountFormView({super.key});

  @override
  State<CreateAccountFormView> createState() => _CreateAccountFormViewState();
}

class _CreateAccountFormViewState extends State<CreateAccountFormView> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: CustomAppBar(
                title: '',
                showBackButton: true,
              ),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FittedBox(
                              child: Container(
                                //width: MediaQuery.of(context).size.width,
                                child: Text('Create Your Account',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: InlineInput(
                              label: 'First Name',
                            )),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: InlineInput(
                              label: 'Last Name',
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InlineInput(
                          label: 'Email',
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
                        InlineInput(
                          label: 'Phone',
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
                        InlineInput(
                          label: 'Confirm Password',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              activeColor: Theme.of(context).primaryColor,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: Text(
                                    'By creating an account, you aggree to our Terms and Conditions',
                                    style:
                                        Theme.of(context).textTheme.bodySmall)),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MyButton(
                          text: 'Sign Up',
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
