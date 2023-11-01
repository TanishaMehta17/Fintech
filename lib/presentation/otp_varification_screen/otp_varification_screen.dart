import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class OtpVarificationScreen extends StatelessWidget {
  final number_controller = TextEditingController();
  final number_controller1 = TextEditingController();
  final number_controller2 = TextEditingController();
  final number_controller3 = TextEditingController();
  final FocusNode first = FocusNode();
  final FocusNode second = FocusNode();
  final FocusNode third = FocusNode();
  final FocusNode fourth = FocusNode();

  void onTapVerifyotp(BuildContext context) {
    if (number_controller.text.isEmpty ||
        number_controller1.text.isEmpty ||
        number_controller2.text.isEmpty ||
        number_controller3.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'All OTP fields must be filled',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      // All OTP fields are filled, navigate to the next screen.
      Navigator.pushNamed(context, AppRoutes.setFingerprintScreen);
    }
  }

  OtpVarificationScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 78.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "OTP Verification",
                    margin: EdgeInsets.only(left: 54.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: 429.h,
                padding: EdgeInsets.symmetric(horizontal: 56.h, vertical: 35.v),
                child: Column(children: [
                  SizedBox(height: 21.v),
                  CustomImageView(
                      svgPath: ImageConstant.imgBag,
                      height: 71.adaptSize,
                      width: 71.adaptSize),
                  SizedBox(height: 28.v),
                  Text("OTP", style: CustomTextStyles.headlineLargeBluegray900),
                  Container(
                      width: 241.h,
                      margin:
                          EdgeInsets.only(left: 38.h, top: 8.v, right: 37.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text:
                                    "Please enter the OTP send to your mobile number",
                                style: CustomTextStyles.titleMediumGray50001_2),
                            TextSpan(text: " "),
                            // TextSpan(
                            //     text: "+1 123 3698 789",
                            //     style: CustomTextStyles.titleMediumPrimary_2)
                          ]),
                          textAlign: TextAlign.center)),
                  Text("+1 123 3698 789",
                      style: CustomTextStyles.titleMediumPrimary_2),
                  // CustomPinCodeTextField(
                  //     context: context,
                  //     margin:
                  //         EdgeInsets.only(left: 13.h, top: 99.v, right: 13.h),
                  //     onChanged: (value) {}),
                  Spacer(),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          Text(
                            'Enter Password',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                                fontSize: 17.0),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Container(
                                  child: TextField(
                                    //keyboardType: TextInputType.phone,
                                    controller: number_controller,
                                    focusNode: first,
                                    textInputAction: TextInputAction.next,
                                    onSubmitted: (_) {
                                      FocusScope.of(context)
                                          .requestFocus(second);
                                    },
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(1)
                                    ],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                    keyboardType: TextInputType.phone,
                                  ),
                                  width: 58.0,
                                  height: 58.0,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Container(
                                  child: TextField(
                                    controller: number_controller1,
                                    focusNode: second,
                                    textInputAction: TextInputAction.next,
                                    onSubmitted: (_) {
                                      FocusScope.of(context)
                                          .requestFocus(third);
                                    },
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(1)
                                    ],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                    keyboardType: TextInputType.phone,
                                  ),
                                  width: 58.0,
                                  height: 58.0,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Container(
                                  child: TextField(
                                    controller: number_controller2,
                                    focusNode: third,
                                    textInputAction: TextInputAction.next,
                                    onSubmitted: (_) {
                                      FocusScope.of(context)
                                          .requestFocus(fourth);
                                    },
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(1)
                                    ],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                    keyboardType: TextInputType.phone,
                                  ),
                                  width: 58.0,
                                  height: 58.0,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Container(
                                  child: TextField(
                                    controller: number_controller3,
                                    focusNode: fourth,
                                    textInputAction: TextInputAction.done,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(1)
                                    ],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25),
                                    keyboardType: TextInputType.phone,
                                  ),
                                  width: 58.0,
                                  height: 58.0,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ],
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 150),
                          //   child: CustomElevatedButton(
                          //     text: 'Pay Now',
                          //     width: 350,
                          //     onTap: () {
                          //       // onTapPaynow(context);
                          //       //onTapConfirm(context);
                          //     },
                          //   ),
                          // )
                        ],
                      )),
                  SizedBox(
                    height: 150,
                  ),
                  Text("Don’t receive an OTP?",
                      style: CustomTextStyles.titleMediumGray5000116_1),
                  SizedBox(height: 7.v),
                  Text("Resend OTP",
                      style: CustomTextStyles.titleMediumBluegray900_3
                          .copyWith(decoration: TextDecoration.underline)),
                  SizedBox(height: 29.v),
                  CustomElevatedButton(
                    text: "Next",
                    // onTap: () {
                    //   onTapNext(context);
                    // }
                    onTap: () {
                      onTapVerifyotp(context);
                    },
                  )
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the popAddPinScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the popAddPinScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.popAddPinScreen);
  }
}
