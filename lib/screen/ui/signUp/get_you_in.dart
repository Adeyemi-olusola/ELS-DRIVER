import 'package:ets_driver/screen/ui/login/login_view.dart';
import 'package:ets_driver/screen/ui/signUp/create_accountForm_view.dart';
import 'package:ets_driver/screen/ui/signUp/sigup_view_model.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class GetInView extends StatefulWidget {
  const GetInView({super.key});

  @override
  State<GetInView> createState() => _GetInViewState();
}

class _GetInViewState extends State<GetInView> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset('assets/onboarding_assets/Group 38.svg'),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Let\'s get you in',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayLarge!),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 50,
                            child: Text(
                                'The Uber luxury mobile app is a high-end, premium transportation service designed to cater to a client seeking the ultimate luxury and convenience in their experiences',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodySmall!),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      MyButton(
                          text: 'SignUp',
                          onPressed: () {
                            Get.to(const CreateAccountFormView());
                          }),
                      const SizedBox(
                        height: 15,
                      ),
                      WhiteButton(
                          text: 'Login',
                          onPressed: () {
                            Get.to(const LoginWidget());
                          })
                    ],
                  ),
                ],
              ),
            ),
          ));
        });
  }
}
