import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/signin/controller/signin_screen_controller.dart';
import 'package:iubrsa/app/shared/widgets/custom_button.dart';
import 'package:iubrsa/app/shared/widgets/custom_text_field.dart';

import '../../../../data/constants/app_data.dart';
import '../widgets/signin_form.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final SigninScreenController controller = Get.find();
  @override
  void dispose() {
    Get.delete<SigninScreenController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppData.appName,
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: AppData.defaultPadding,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hello Again!",
                            style: AppData.boldTextStyle.copyWith(
                              fontSize: 20,
                              height: .95,
                              color: AppData.darkBlueColor.withOpacity(
                                .85,
                              ),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Welcome back you've\nbeen missed!",
                            style: AppData.lightTextStyle.copyWith(
                              color: AppData.customDarkGrey,
                              height: 1,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SigninForm(),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.onRecoveryPasswordButtonClick();
                                },
                                child: Text(
                                  'Recovery Password',
                                  style: AppData.regularTextStyle.copyWith(
                                    color: AppData.customDarkGrey,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Obx(
                            () => CustomButton(
                              title: "Sign In",
                              callBackFunction: () {
                                controller.onSignInButtonClick();
                              },
                              isLoading: controller.isSignInButtonLoading.value,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width: Get.width / 5,
                                color: AppData.customLightGrey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                ' Or continue with ',
                                style: AppData.regularTextStyle.copyWith(
                                  color: AppData.customDarkGrey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 1,
                                width: Get.width / 5,
                                color: AppData.customLightGrey,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: AppData.defaultButtonHeight,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: AppData.customWhite,
                                  borderRadius: BorderRadius.circular(
                                    AppData.defaultBorderRadius,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color: AppData.customDarkGrey,
                                  ),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                  size: 18,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: AppData.defaultButtonHeight,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: AppData.customWhite,
                                  borderRadius: BorderRadius.circular(
                                    AppData.defaultBorderRadius,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color: AppData.customDarkGrey,
                                  ),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.apple,
                                  color: Colors.black,
                                  size: 22,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: AppData.defaultButtonHeight,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: AppData.customWhite,
                                  borderRadius: BorderRadius.circular(
                                    AppData.defaultBorderRadius,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color: AppData.customDarkGrey,
                                  ),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.facebook,
                                  color: AppData.royalBlueColor,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Get.height / 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.onRegisterNowButtonClick();
              },
              child: Container(
                height: AppData.defaultButtonHeight - 10,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member? ",
                      style: AppData.lightTextStyle.copyWith(
                        color: AppData.darkBlueColor.withOpacity(.8),
                      ),
                    ),
                    Text(
                      "Register now!",
                      style: AppData.boldTextStyle.copyWith(
                        color: AppData.royalBlueColor,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
