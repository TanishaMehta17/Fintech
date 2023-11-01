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
class PayBillAmountElectricityScreen extends StatelessWidget {
  PayBillAmountElectricityScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController group6763Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "Confirmation", margin: EdgeInsets.only(left: 69.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 46.v),
                child: Column(children: [
                  Text("Are you sure?", style: theme.textTheme.headlineLarge),
                  Container(
                      width: 271.h,
                      margin:
                          EdgeInsets.only(left: 48.h, top: 12.v, right: 47.h),
                      child: Text(
                          "Please make sure that you want to pay electricity bill",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumGray50001_3
                              .copyWith(height: 1.47))),
                  SizedBox(height: 39.v),
                  SizedBox(
                      height: 409.v,
                      width: 368.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                padding: EdgeInsets.all(36.h),
                                decoration: AppDecoration.fillGray50001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 70.h, top: 26.v),
                                          child: Text("Electricity Bill",
                                              style: theme
                                                  .textTheme.headlineMedium)),
                                      SizedBox(height: 4.v),
                                      Text("David Joshi",
                                          style: CustomTextStyles.bodyLarge16),
                                      CustomTextFormField(
                                          controller: group6763Controller,
                                          margin: EdgeInsets.only(
                                              left: 22.h,
                                              top: 19.v,
                                              right: 22.h),
                                          hintText:
                                              "Transactions Status: Unpaid",
                                          hintStyle: CustomTextStyles
                                              .titleMediumPrimary16_1,
                                          textInputAction: TextInputAction.done,
                                          alignment: Alignment.center,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 26.h, vertical: 9.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlack,
                                          fillColor: Colors.red[100]),
                                      SizedBox(height: 15.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "350.00",
                                                    style: CustomTextStyles
                                                        .displaySmallRegular_1),
                                                TextSpan(
                                                    text: "INR",
                                                    style: CustomTextStyles
                                                        .titleLargeSecondaryContainerRegular_2)
                                              ]),
                                              textAlign: TextAlign.center)),
                                      SizedBox(height: 21.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Bill Number",
                                                style: CustomTextStyles
                                                    .titleMedium_1),
                                            Text("12569874564",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900_4)
                                          ]),
                                      SizedBox(height: 17.v),
                                      Divider(),
                                      SizedBox(height: 17.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Due Date",
                                                style: CustomTextStyles
                                                    .titleMedium_1),
                                            Text("March 23. 2021",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900_4)
                                          ])
                                    ]))),
                        CustomImageView(
                            svgPath: ImageConstant.imgVolumeWhiteA700,
                            height: 32.adaptSize,
                            width: 32.adaptSize)
                      ])),
                  CustomElevatedButton(
                      text: "Pay Now",
                      margin:
                          EdgeInsets.only(left: 26.h, top: 46.v, right: 26.h),
                      onTap: () {
                        onTapPaynow(context);
                      })
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

  /// Navigates to the payBillConfigrationElectricityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the payBillConfigrationElectricityScreen.
  onTapPaynow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.electricityBillPaymentScreen);
  }
}
