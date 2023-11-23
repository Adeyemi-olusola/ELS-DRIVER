
// import 'package:flutter/material.dart';

// class RegistrationSecondPage extends StatefulWidget {
//   RegistrationSecondPage({super.key, this.body});
//   var body;

//   @override
//   State<RegistrationSecondPage> createState() => _RegistrationSecondPageState();
// }

// class _RegistrationSecondPageState extends State<RegistrationSecondPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
      
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Welcome , ${widget.body['firstname']}',
//                     style: TextStyles()
//                         .blackTextStyle400()
//                         .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: Text(
//                       'Here’s what you need to do to set up your account.',
//                       style: TextStyles()
//                           .greyTextStyle400()
//                           .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     const DriverPhotoUploadPage()));
//                       },
//                       child:
//                           cardWidget('Driver photo', 'Recommended next steps')),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const DriverNamePage()));
//                     },
//                     child: cardWidget(
//                         'Vehicle name and number', 'Recommended next steps'),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     const DriverLicensePage()));
//                       },
//                       child: cardWidget(
//                           'Driver license', 'Recommended next steps')),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     const AnnualTotalTripsPage()));
//                       },
//                       child: cardWidget('Upload annual total  trips',
//                           'Recommended next steps')),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     const ProofOfRegistrationPage()));
//                       },
//                       child: cardWidget(
//                           'Proof of registartion', 'Recommended next steps')),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     const EmergencyContactPage()));
//                       },
//                       child: cardWidget(
//                           'Emergency contact', 'Recommended next steps')),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => BusinessNamePage()));
//                       },
//                       child: cardWidget(
//                           'Business name', 'Recommended next steps')),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     const AboutYourselfPage()));
//                       },
//                       child: cardWidget(
//                           'Tell us about yourself', 'Recommended next steps')),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     ));
//   }

//   Container cardWidget(String topText, lowText) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 67,
//       decoration: const BoxDecoration(
//         color: Color(0xffF6F6F6),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 30),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(
//                   '#',
//                   style: TextStyles().blackTextStyle700(),
//                 ),
//                 const SizedBox(
//                   width: 30,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       topText,
//                       style: TextStyles()
//                           .blackTextStyle400()
//                           .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       lowText,
//                       style: TextStyles().greyTextStyle400().copyWith(
//                             fontSize: 10,
//                           ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//           const Icon(
//             Icons.arrow_forward_ios,
//             size: 16,
//           )
//         ],
//       ),
//     );
//   }
// }
