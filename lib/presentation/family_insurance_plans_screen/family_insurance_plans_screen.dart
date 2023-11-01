import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class FamilyInsurancePlansScreen extends StatelessWidget {
  FamilyInsurancePlansScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Insurance"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Column(children: [
                      SizedBox(
                          height: 239.v,
                          width: 368.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 22.h, vertical: 19.v),
                                    decoration: AppDecoration.outlineGray50001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 156.v),
                                          Text("Family Insurance",
                                              style: CustomTextStyles
                                                  .titleLargeBluegray900_1),
                                          SizedBox(height: 2.v),
                                          Text(
                                              "Family plans cover two or more members.",
                                              style: theme.textTheme.bodyMedium)
                                        ]))),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle1467155x368,
                                height: 155.v,
                                width: 368.h,
                                radius: BorderRadius.vertical(
                                    top: Radius.circular(10.h)),
                                alignment: Alignment.topCenter)
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 30.h, top: 36.v),
                              child: Text("Select a Insurance Plan",
                                  style: CustomTextStyles
                                      .titleLargeBluegray900_1))),
                      Container(
                          margin: EdgeInsets.only(
                              left: 29.h, top: 18.v, right: 29.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 26.h, vertical: 14.v),
                          decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 12.v),
                                CustomRadioButton(
                                    value: "Monthly",
                                    groupValue: radioGroup,
                                    onChange: (value) {
                                      radioGroup = value;
                                    })
                              ])),
                      Container(
                          margin: EdgeInsets.only(
                              left: 29.h, top: 19.v, right: 29.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 26.h, vertical: 13.v),
                          decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 12.v),
                                CustomRadioButton(
                                    width: 314.h,
                                    value: "",
                                    groupValue: radioGroup1,
                                    isRightCheck: true,
                                    onChange: (value) {
                                      radioGroup1 = value;
                                    })
                              ])),
                      Container(
                          margin: EdgeInsets.only(
                              left: 29.h, top: 15.v, right: 29.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 26.h, vertical: 13.v),
                          decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 14.v),
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
                              left: 56.h, top: 86.v, right: 55.h),
                          onTap: () {
                            onTapContinue(context);
                          }),
                      SizedBox(height: 36.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup7826,
                          height: 93.v,
                          width: 427.h)
                    ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the familyInsuranceInfoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the familyInsuranceInfoScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.familyInsuranceInfoScreen);
  }
}
