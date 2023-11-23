import 'package:ets_driver/screen/ui/signUp/sigup_view_model.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/dialog/dialog.dart';
import 'package:ets_driver/screen/widgets/upload_file_widget/uplload_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class UploadVehicleView extends StatefulWidget {
  const UploadVehicleView({super.key});

  @override
  State<UploadVehicleView> createState() =>
      _UploadVehicleViewState();
}

class _UploadVehicleViewState extends State<UploadVehicleView> {
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
                      Text('Upload Vehicle Image',
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
                            'Please upload a clear picture of yourself, with high-resolution images',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodySmall!),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(height: 50, child: UploadImageWidget()),
                  const SizedBox(
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
