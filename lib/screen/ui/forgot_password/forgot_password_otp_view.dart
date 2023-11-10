import 'package:ets_rider/screen/ui/forgot_password/forgot_password_view_model.dart';
import 'package:ets_rider/screen/widgets/button/button.dart';
import 'package:ets_rider/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

//import 'package:truman_staff/utils/tools.dart' as tools;

class FogotPasswordOtpView extends StatefulWidget {
  const FogotPasswordOtpView({
    Key? key,
  }) : super(key: key);

  @override
  State<FogotPasswordOtpView> createState() => _FogotPasswordOtpViewState();
}

class _FogotPasswordOtpViewState extends State<FogotPasswordOtpView> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool FogotPasswordOtpViewPasswordVisibility = false;

  bool staffLoginPasswordVisibility = false;

  @override
  void initState() {
    super.initState();
         ForgotPasswordModelView().startTime();

    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController(); //..text = 'admin@mail.com';
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
                                  Text(
                                      'Code has been sent to johndoe@gmail.com Enter the code to verify your account',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  InlineInput(
                                    controller: emailController,
                                    label: 'Email',
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '${viewModel.seconds} seconds',
                                    style: TextStyle(fontSize: 24),
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
                                        onPressed: () async {},
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
