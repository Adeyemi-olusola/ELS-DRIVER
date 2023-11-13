import 'package:ets_rider/screen/ui/signUp/sigup_view_model.dart';
import 'package:ets_rider/screen/widgets/button/button.dart';
import 'package:ets_rider/screen/widgets/dialog/dialog.dart';
import 'package:ets_rider/screen/widgets/input/underlineInput.dart';
import 'package:ets_rider/screen/widgets/upload_file_widget/uplload_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class UploadProfilePictureView extends StatefulWidget {
  const UploadProfilePictureView({super.key});

  @override
  State<UploadProfilePictureView> createState() =>
      _UploadProfilePictureViewState();
}

class _UploadProfilePictureViewState extends State<UploadProfilePictureView> {
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Upload your picture',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge!),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                            'Please upload a clear picture of yourself, with high-resolution images',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodySmall!),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(height: 50, child: UploadImageWidget()),
                  SizedBox(
                    height: 40,
                  ),
                  MyButton(
                      text: 'Continue',
                      onPressed: () {
                        DialogBox().sshowDialog(context);
                      })
                ],
              ),
            ),
          ));
        });
  }
}
