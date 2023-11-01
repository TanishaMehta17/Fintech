import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class HealthInsurancePlansScreen extends StatelessWidget {
  HealthInsurancePlansScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 78.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Insurance"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30.h, right: 30.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 239.v,
                                        width: 368.h,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 22.h,
                                                              vertical: 19.v),
                                                      decoration: AppDecoration
                                                          .outlineGray50001
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderBL10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            SizedBox(
                                                                height: 153.v),
                                                            Text(
                                                                "Health Insurance",
                                                                style: CustomTextStyles
                                                                    .titleLargeBluegray900_1),
                                                            SizedBox(
                                                                height: 5.v),
                                                            Text(
                                                                "Family plans cover two or more members.",
                                                                style: CustomTextStyles
                                                                    .bodyMediumPink200)
                                                          ]))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle1469155x368,
                                                  height: 155.v,
                                                  width: 368.h,
                                                  radius: BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          10.h)),
                                                  alignment:
                                                      Alignment.topCenter)
                                            ])),
                                    SizedBox(height: 35.v),
                                    Text("Select a Insurance Plan",
                                        style: CustomTextStyles
                                            .titleLargeBluegray900_1),
                                    SizedBox(height: 18.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 26.h, vertical: 15.v),
                                        decoration: AppDecoration.outlineGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 12.v),
                                              CustomRadioButton(
                                                  value: "",
                                                  groupValue: radioGroup,
                                                  onChange: (value) {
                                                    radioGroup = value;
                                                  })
                                            ])),
                                    SizedBox(height: 18.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 26.h, vertical: 13.v),
                                        decoration: AppDecoration.outlineGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 11.v),
                                              CustomRadioButton(
                                                  width: 314.h,
                                                  value: "",
                                                  groupValue: radioGroup1,
                                                  isRightCheck: true,
                                                  onChange: (value) {
                                                    radioGroup1 = value;
                                                  })
                                            ])),
                                    SizedBox(height: 18.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 26.h, vertical: 13.v),
                                        decoration: AppDecoration.outlineGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 13.v),
                                              CustomRadioButton(
                                                  width: 314.h,
                                                  value: "",
                                                  groupValue: radioGroup2,
                                                  isRightCheck: true,
                                                  onChange: (value) {
                                                    radioGroup2 = value;
                                                  })
                                            ])),
                                    CustomElevatedButton(
                                        text: "Continue",
                                        margin: EdgeInsets.only(
                                            left: 26.h, top: 83.v, right: 26.h),
                                        onTap: () {
                                          onTapContinue(context);
                                        },
                                        alignment: Alignment.center)
                                  ]))))
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

  /// Navigates to the healthInsuranceInfoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the healthInsuranceInfoScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.healthInsuranceInfoScreen);
  }
}
