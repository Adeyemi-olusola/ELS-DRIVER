import 'package:ets_driver/screen/ui/change_password/change_password.dart';
import 'package:ets_driver/screen/ui/profile/edit_emergency_contact/edit_emergency_contact_view.dart';
import 'package:ets_driver/screen/ui/profile/update_driver_license/update_driver_license_view.dart';
import 'package:ets_driver/screen/ui/profile/update_vehicle_name/update_vehicle_name_view.dart';
import 'package:ets_driver/screen/widgets/timeline/timeline_widget.dart';
import 'package:ets_driver/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecurityView extends StatefulWidget {
  const SecurityView({super.key});

  @override
  State<SecurityView> createState() => _SecurityViewState();
}

class _SecurityViewState extends State<SecurityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                profileWidget(
                    'Change Password', false, ChangePassword()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  profileWidget(String text, bool isLogout, Widget goTowidget) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          Get.to(goTowidget);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  text,
                  style: defaultTheme.textTheme.bodySmall!
                      .copyWith(color: isLogout ? Colors.red : Colors.white),
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
