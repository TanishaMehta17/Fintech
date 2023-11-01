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
class HomeInsurancePlansScreen extends StatelessWidget {
  HomeInsurancePlansScreen({Key? key}) : super(key: key);

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
                                  left: 29.h, right: 29.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 239.v,
                                        width: 369.h,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 1.h),
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
                                                                "House Insurance",
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
                                                      .imgRectangle1468155x368,
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
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 18.v, right: 1.h),
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
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 18.v, right: 1.h),
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
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 18.v, right: 1.h),
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
                                          left: 26.h, top: 83.v, right: 27.h),
                                      alignment: Alignment.center,
                                      onTap: () {
                                        onTapcon(context);
                                      },
                                    )
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

  onTapcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeInsuranceInfoScreen);
  }
}
