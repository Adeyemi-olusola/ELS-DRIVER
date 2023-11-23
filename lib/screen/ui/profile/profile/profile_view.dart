import 'package:ets_driver/screen/ui/change_password/change_password.dart';
import 'package:ets_driver/screen/ui/profile/edit_profile/edit_profile_view.dart';
import 'package:ets_driver/screen/ui/profile/update_document/update_document_view.dart';
import 'package:ets_driver/screen/ui/security/security_view.dart';
import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:ets_driver/screen/widgets/timeline/timeline_widget.dart';
import 'package:ets_driver/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
                CircleAvatar(
                  radius: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Daniel Austin',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 17),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              radius: 20,
                              child: const Icon(
                                Icons.star_half,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '4.8',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Rating',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Color(0xff9E9E9E), fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              radius: 20,
                              child: const Icon(
                                Icons.car_crash_sharp,
                                color: Colors.black,
                                size: 17,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '279',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Total Trips',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Color(0xff9E9E9E), fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              radius: 20,
                              child: const Icon(
                                Icons.call_outlined,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '15h 30m',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Time Online',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Color(0xff9E9E9E), fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                profileWidget(Icons.person_outlined, 'Edit Profile', false,
                    EditProfileView()),
                profileWidget(Icons.notifications_outlined, 'Notification',
                    false, EditProfileView()),
                profileWidget(Icons.edit_document, 'Update Document', false,
                    UpdateDocumentView()),
                profileWidget(
                    Icons.lock_outline, 'Security', false, SecurityView()),
                profileWidget(Icons.privacy_tip_outlined, 'Privacy Policy',
                    false, EditProfileView()),
                profileWidget(Icons.help_outline, 'Help Center', false,
                    EditProfileView()),
                profileWidget(Icons.logout, 'Log out', true, EditProfileView()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  profileWidget(IconData icon, String text, bool isLogout, Widget goTowidget) {
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
                Icon(
                  icon,
                  color: isLogout ? Colors.red : Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
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
