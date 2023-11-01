import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobileNumberPinChangeScreen extends StatelessWidget {
  MobileNumberPinChangeScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController mobilenumberthrController = TextEditingController();

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
                    text: "Mobile Number", margin: EdgeInsets.only(left: 58.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Form(
              key: _formKey,
              child: Container(
                  width: 429.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 35.v),
                  child: Column(children: [
                    SizedBox(height: 21.v),
                    CustomImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: 80.v,
                        width: 61.h),
                    SizedBox(height: 28.v),
                    Text("Mobile Number",
                        style: CustomTextStyles.headlineLargeBluegray900),
                    Container(
                        width: 262.h,
                        margin:
                            EdgeInsets.only(left: 51.h, top: 7.v, right: 55.h),
                        child: Text(
                            "We need to send OTP to authenticate \nyour number to change your pin",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleMediumGray50001_3
                                .copyWith(height: 1.30))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 12.h, top: 70.v),
                            child: Text("Mobile Number",
                                style:
                                    CustomTextStyles.titleMediumBluegray200))),
                    SizedBox(height: 14.v),
                    CustomTextFormField(
                        controller: mobilenumberthrController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Mobile Number cannot be empty';
                          }
                          if (value.length != 10) {
                            return 'Mobile Number must be 10 digits';
                          }
                          return null;
                        },
                        hintText: "+91 983 369 789",
                        hintStyle: CustomTextStyles.bodyLargeArapeyBluegray900,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                            margin: EdgeInsets.fromLTRB(19.h, 15.v, 12.h, 19.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgImage129,
                                height: 29.adaptSize,
                                width: 29.adaptSize)),
                        prefixConstraints: BoxConstraints(maxHeight: 65.v),
                        contentPadding: EdgeInsets.only(
                            top: 23.v, right: 30.h, bottom: 23.v)),
                    Spacer(),
                    CustomElevatedButton(
                      text: "Next",
                      margin: EdgeInsets.symmetric(horizontal: 26.h),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          onTapNext(context);
                        }
                      },
                    )
                  ])),
            ),
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

  /// Navigates to the otpVarificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the otpVarificationScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpVarificationScreen);
  }
}
