import 'package:ets_driver/screen/ui/forgot_password/forgot_password_view.dart';
import 'package:ets_driver/screen/ui/navbar/navbar_view.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'package:truman_staff/utils/tools.dart' as tools;

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool LoginWidgetPasswordVisibility = false;

  bool staffLoginPasswordVisibility = false;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController(); //..text = 'admin@mail.com';
    passwordController = TextEditingController(); //..text = 'password';
  }

  DateTime? currentBackPressTime;
  Future<bool> _onWillPop() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginWidget()));
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Check if the back button is pressed within 2 seconds of the last press
        if (currentBackPressTime == null ||
            DateTime.now().difference(currentBackPressTime!) >
                const Duration(seconds: 2)) {
          currentBackPressTime = DateTime.now();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Press back again to exit the app')),
          );
          return false; // Prevent exiting the app on the first back press
        }
        return true; // Exit the app on the second back press
      },
      child: Scaffold(
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
                                height: 40,
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Welcome Back!',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const SizedBox(
                                height: 48,
                              ),
                              InlineInput(
                                controller: emailController,
                                label: 'Email/Phone Number',
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              InlineInput(
                                controller: passwordController,
                                label: 'Password',
                                suffixWidget: InkWell(
                                  onTap: () => setState(
                                    () => staffLoginPasswordVisibility =
                                        !staffLoginPasswordVisibility,
                                  ),
                                  child: Icon(
                                    staffLoginPasswordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,

                                    color: Theme.of(context).primaryColor,
                                    //color: themeData.iconColor,
                                    size: 22,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Row(
                                      children: [],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.to(const ForgotPasswordView());
                                      },
                                      child: Text('Forgot Password ?',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Column(
                                children: [
                                  MyButton(
                                    text: 'Login',
                                    onPressed: () async {
                                      Get.to(const NavBarView());
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             const BvnWidget()));
                                    },
                                    child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            const TextSpan(
                                              text: 'Don’t have account? ',
                                            ),
                                            TextSpan(
                                                text: 'Sign Up',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                        color: Theme.of(context)
                                                            .primaryColor)),
                                          ],
                                        )),
                                  ),
                                ],
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
      ),
    );
  }
}
