import 'dart:io';

import 'package:ets_driver/screen/ui/signUp/onboarding_reg/vehicle_registration/vehicle_registration_view.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:flutter/material.dart';
import 'package:ets_driver/utils/tools.dart' as tools;
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DriverLicensePage extends StatefulWidget {
  const DriverLicensePage({super.key});

  @override
  State<DriverLicensePage> createState() => _DriverLicensePageState();
}

class _DriverLicensePageState extends State<DriverLicensePage> {
  var imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Upload Driver License',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge!),
                      Text(
                        'All four sides of the license should be photographed. Ensure that the license number in the top left-hand corner is clearly visible in the image photographed',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          InkWell(
                            onTap: () async {
                              var imageFilePath = await tools.pickImagePath();

                              setState(() {
                                imagePath = imageFilePath;
                                print('cfdf $imagePath');
                              });
                            },
                            child: Container(
                                child: imagePath == null
                                    ? Image.asset(
                                        'assets/default_assets/Rectangle 4126.png',
                                        width:
                                            MediaQuery.of(context).size.width,
                                      )
                                    : Center(
                                        child: Image.file(
                                          File(imagePath!),
                                          height: 320,
                                        ),
                                      )),
                          ),
                          InkWell(
                              onTap: () async {
                                var imageFilePath = await tools.pickImagePath();

                                setState(() {
                                  imagePath = imageFilePath;
                                  print('cfdf $imagePath');
                                });
                              },
                              child: SizedBox(
                                  height: 250,
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Tap to select photo',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Icon(MdiIcons.camera)
                                    ],
                                  ))),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MyButton(
              text: 'Continue',
              onPressed: () {
                Get.to(const VehicleRegistrationView());
                // var userDetail
                //Gs =
                //     Provider.of<UserState>(context, listen: false).userDetails;

                // RegistrationService().uploadPhoto(
                //     context,
                //     imagePath!,
                //     'onboard/license',
                //     userDetails == null
                //         ? DriverNamePage()
                //         : userDetails['driver_has_vehicle']
                //             ? ProofOfRegistrationPage()
                //             : const DriverNamePage());
              },
            ),
          )
        ],
      ),
    ));
  }

  SizedBox cardWidget(String topText, lowText) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        // decoration: BoxDecoration(
        //   color: Color(0xffF6F6F6),
        // ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              topText,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff515B6F)),
            ),
            Expanded(
              child: Text(
                lowText,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff515B6F)),
              ),
            ),
          ],
        ));
  }
}
