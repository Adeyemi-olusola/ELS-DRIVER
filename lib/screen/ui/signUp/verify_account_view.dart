import 'package:ets_driver/screen/ui/forgot_password/forgot_password_view_model.dart';
import 'package:ets_driver/screen/ui/signUp/upload_picture_view.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

//import 'package:truman_staff/utils/tools.dart' as tools;

class RegistrationOtpView extends StatefulWidget {
  const RegistrationOtpView({
    Key? key,
  }) : super(key: key);

  @override
  State<RegistrationOtpView> createState() => _RegistrationOtpViewState();
}

class _RegistrationOtpViewState extends State<RegistrationOtpView> {
  late TextEditingController codeController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool RegistrationOtpViewPasswordVisibility = false;

  bool staffLoginPasswordVisibility = false;

  @override
  void initState() {
    super.initState();
    ForgotPasswordModelView().startTime();

    codeController = TextEditingController(
        text: '4 digit code'); //..text = 'admin@mail.com';
    passwordController = TextEditingController(); //..text = 'password';
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ForgotPasswordModelView(),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: SafeArea(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * .9,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Verify Account',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      text: 'Code has been sent to ',
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      children: [
                                        TextSpan(
                                          text: 'johndoe@gmail.com',
                                          style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                        const TextSpan(
                                          text:
                                              ' Enter the code to verify your account',
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  InlineInput(
                                    controller: codeController,
                                    label: 'Enter Code',
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '${viewModel.seconds} seconds',
                                    style: const TextStyle(fontSize: 24),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Column(
                                    children: [
                                      MyButton(
                                        text: 'Verify Account',
                                        onPressed: () {
                                          Get.to(const UploadProfilePictureView());
                                        },
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
