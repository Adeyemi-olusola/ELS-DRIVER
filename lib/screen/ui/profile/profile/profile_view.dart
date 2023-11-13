import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:provider/provider.dart';
//import 'package:airruppies/utils/tools.dart' as tools;

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColo
      //
      //r: themes().primaryColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  //   height: 900,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              //backgroundColor:
                              //    themes().primaryColor,
                              radius: 60,
                              backgroundImage: NetworkImage(
                                  'devfvfv'), // Replace with your image URL
                            ),
                            Positioned(
                              bottom: 20,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    border: Border.all(
                                        color: Colors.white, width: 3),
                                    shape: BoxShape.circle),
                                child: const Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                    size: 11,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'userData!lastname',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 23),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        Text(
                          '0802222222',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        // Text(
                        //   'Account No :  ${userData?['virtual_account'].toString() == 'null' ? 'Contact our help desk ' : userData?['virtual_account']['account_number']}',
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .displaySmall!
                        //       .copyWith(
                        //           fontWeight: FontWeight.w500,
                        //           fontSize: 12),
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const MyAccountWidget()));
                          },
                          child: const ProfileCard(
                            text: 'Edit Profile',
                            imageText:
                                'assets/svgs/profile_svgs/profile_tile/people.svg',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const Teir2ProofPage()));
                          },
                          child: const ProfileCard(
                            text: 'Notification',
                            imageText:
                                'assets/svgs/profile_svgs/profile_tile/Hash.svg',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const InvitationWidget()));
                          },
                          child: const ProfileCard(
                            text: 'Payment',
                            imageText:
                                'assets/svgs/profile_svgs/profile_tile/card.svg',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const ProfileCard(
                          text: 'Security',
                          imageText:
                              'assets/svgs/profile_svgs/profile_tile/card.svg',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const MyBonusWidget()));
                          },
                          child: const ProfileCard(
                            text: 'Privacy Policy',
                            imageText:
                                'assets/svgs/profile_svgs/profile_tile/reward 1.svg',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const SettingsWidget()));
                          },
                          child: const ProfileCard(
                            text: 'Help Center',
                            imageText:
                                'assets/svgs/profile_svgs/profile_tile/Vector.svg',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const SettingsWidget()));
                          },
                          child: const ProfileCard(
                            text: 'Xaved Places',
                            imageText:
                                'assets/svgs/profile_svgs/profile_tile/Vector.svg',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const SettingsWidget()));
                          },
                          child: const ProfileCard(
                            text: 'Switch to H',
                            imageText:
                                'assets/svgs/profile_svgs/profile_tile/Vector.svg',
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container accountTierWidget(String text) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(33, 255, 188, 31),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: Row(
          children: [
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: const Color(0xfff6a609), fontSize: 12),
            ),
            Icon(
              Icons.abc_outlined,
              color: const Color(0xffFFBC1F),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key, this.text, this.imageText});
  final String? text;
  final String? imageText;

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Scaffold(
        body: Container(
          height: 67,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          widget.imageText.toString(),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      widget.text.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
