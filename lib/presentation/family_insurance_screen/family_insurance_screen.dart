import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class FamilyInsuranceScreen extends StatelessWidget {
  FamilyInsuranceScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
            body: Padding(
              padding: EdgeInsets.only(left: 30.h, top: 26.v, right: 30.h),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Container(
                    decoration: AppDecoration.outlineGray50001.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle14672,
                          height: 221.v,
                          width: 368.h,
                          radius: BorderRadius.vertical(
                            top: Radius.circular(10.h),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            top: 23.v,
                          ),
                          child: Text(
                            "Family Insurance",
                            style: CustomTextStyles.titleLargeBluegray900_1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "Family plans cover two or more members.",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(43.h, 7.v, 22.h, 24.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 6.v,
                                    bottom: 5.v,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Get",
                                          style: CustomTextStyles
                                              .titleMediumBluegray900,
                                        ),
                                        TextSpan(
                                          text: " ",
                                        ),
                                        TextSpan(
                                          text: "20%",
                                          style: CustomTextStyles
                                              .titleLargePrimary_1,
                                        ),
                                        TextSpan(
                                          text: " ",
                                        ),
                                        TextSpan(
                                          text: "Cashback",
                                          style: CustomTextStyles
                                              .titleMediumBluegray900,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: 32.v,
                                  width: 102.h,
                                  text: "Create Plan",
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL7,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumWhiteA70016,
                                  onTap: () {
                                    onTapCreatePlanButto(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: AppDecoration.outlineGray50001.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1468155x368,
                          height: 221.v,
                          width: 368.h,
                          radius: BorderRadius.vertical(
                            top: Radius.circular(10.h),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            top: 23.v,
                          ),
                          child: Text(
                            "Home Insurance",
                            style: CustomTextStyles.titleLargeBluegray900_1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "Family plans cover two or more members.",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(43.h, 7.v, 22.h, 24.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 6.v,
                                    bottom: 5.v,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Get",
                                          style: CustomTextStyles
                                              .titleMediumBluegray900,
                                        ),
                                        TextSpan(
                                          text: " ",
                                        ),
                                        TextSpan(
                                          text: "10%",
                                          style: CustomTextStyles
                                              .titleLargePrimary_1,
                                        ),
                                        TextSpan(
                                          text: " ",
                                        ),
                                        TextSpan(
                                          text: "Cashback",
                                          style: CustomTextStyles
                                              .titleMediumBluegray900,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: 32.v,
                                  width: 102.h,
                                  text: "Create Plan",
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL7,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumWhiteA70016,
                                  onTap: () {
                                    //onTapCreatePlanButto?.call();
                                    onTapCreatehomePlanButto(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: AppDecoration.outlineGray50001.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1469155x368,
                          height: 221.v,
                          width: 368.h,
                          radius: BorderRadius.vertical(
                            top: Radius.circular(10.h),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            top: 23.v,
                          ),
                          child: Text(
                            "Health Insurance",
                            style: CustomTextStyles.titleLargeBluegray900_1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "Family plans cover two or more members.",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(43.h, 7.v, 22.h, 24.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 6.v,
                                    bottom: 5.v,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Get",
                                          style: CustomTextStyles
                                              .titleMediumBluegray900,
                                        ),
                                        TextSpan(
                                          text: " ",
                                        ),
                                        TextSpan(
                                          text: "10%",
                                          style: CustomTextStyles
                                              .titleLargePrimary_1,
                                        ),
                                        TextSpan(
                                          text: " ",
                                        ),
                                        TextSpan(
                                          text: "Cashback",
                                          style: CustomTextStyles
                                              .titleMediumBluegray900,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: 32.v,
                                  width: 102.h,
                                  text: "Create Plan",
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL7,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumWhiteA70016,
                                  onTap: () {
                                    onTapCreatehealthPlanButto(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the familyInsurancePlansScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the familyInsurancePlansScreen.
  onTapCreatePlanButto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.familyInsurancePlansScreen);
  }

  onTapCreatehomePlanButto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeInsurancePlansScreen);
  }

  onTapCreatehealthPlanButto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.healthInsurancePlansScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
