import 'package:ets_driver/screen/widgets/appbar/appBar_widget.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/input/underlineInput.dart';
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
            appBar: CustomAppBar(title: 'Edit Profile' ,showBackButton: true,),
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      InlineInput(
                        label: 'Firstname',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InlineInput(
                        label: 'Lastname',
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
                        label: 'Company contact',
                      ),
                      MyButton(text: 'Update')
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
