import 'package:ets_rider/screen/widgets/button/button.dart';
import 'package:ets_rider/screen/widgets/input/underlineInput.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:truman_staff/utils/tools.dart' as tools;

class CreateNewPasswordView extends StatefulWidget {
  const CreateNewPasswordView({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateNewPasswordView> createState() => _CreateNewPasswordViewState();
}

class _CreateNewPasswordViewState extends State<CreateNewPasswordView> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool CreateNewPasswordViewPasswordVisibility = false;

  bool staffLoginPasswordVisibility = false;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController(); //..text = 'admin@mail.com';
    passwordController = TextEditingController(); //..text = 'password';
  }

  DateTime? currentBackPressTime;
  Future<bool> _onWillPop() async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const CreateNewPasswordView()));
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(

        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(21.0),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .9,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                         
                           
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Create New Password',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                             Text('Please enter and confirm your new password. You will need to login after you reset.' , textAlign: TextAlign.center, style:Theme.of(context).textTheme.bodySmall ,),
                            const SizedBox(
                              height: 48,
                            ),
                            InlineInput(
                              controller: emailController,
                              label: 'Password',
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            InlineInput(
                              controller: passwordController,
                              label: 'Confirm Password',
                              //    obscureText: !staffLoginPasswordVisibility,

                              // preffixWidget: Icon(MdiIcons.lock,
                              //     color: ().greyText),

                              //validator: tools.Validators.validateEmail,

                              suffixWidget: InkWell(
                                onTap: () => setState(
                                  () => staffLoginPasswordVisibility =
                                      !staffLoginPasswordVisibility,
                                ),
                                child: Icon(
                                  staffLoginPasswordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  //color: themeData.iconColor,
                                  size: 22,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                        
                            const SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: [
                                MyButton(
                                  text: 'Reset Password',
                                  onPressed: () async {
                                    // if (!_formKey.currentState!.validate()) {
                                    // } else {
                                    //   var body = {
                                    //     'identifier': emailController.text,
                                    //     'password': passwordController.text,
                                    //     'location': Provider.of<AuthState>(
                                    //             context,
                                    //             listen: false)
                                    //         .userLocation,

                                    //     // 'location': '-122.084, 37.4219983',
                                    //     'device_id':
                                    //         // 'mobile'
                                    //         Provider.of<AuthState>(context,
                                    //                 listen: false)
                                    //             .userDeviceId
                                    //   };
                                    //   print(body);
                                    //   AuthService().login(context, body);
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                        
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
