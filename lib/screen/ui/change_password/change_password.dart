import 'package:ets_rider/screen/widgets/button/button.dart';
import 'package:ets_rider/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BaseViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      InlineInput(
                        label: 'Old Password',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InlineInput(
                        label: 'New Password',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InlineInput(
                        label: 'Confirm Password',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyButton(text: 'Save')
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
