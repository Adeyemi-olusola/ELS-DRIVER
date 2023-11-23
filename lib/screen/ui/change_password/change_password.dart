import 'package:ets_driver/screen/widgets/appbar/appBar_widget.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/input/underlineInput.dart';
import 'package:ets_driver/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BaseViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: CustomAppBar(title: 'Change Password' , showBackButton: true,),
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      InlineInput(
                        label: 'Old Password',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InlineInput(
                        label: 'New Password',
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
                    
                     
                      const MyButton(text: 'Save')
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
