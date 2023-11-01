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
class WaterBillPayBillScreen extends StatelessWidget {
  WaterBillPayBillScreen({Key? key}) : super(key: key);

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
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 42.v),
                child: Column(children: [
                  SizedBox(height: 15.v),
                  Text("Are you sure?", style: theme.textTheme.headlineLarge),
                  Container(
                      width: 294.h,
                      margin:
                          EdgeInsets.only(left: 37.h, top: 12.v, right: 36.h),
                      child: Text(
                          "Please make sure that you want to pay electricity bill",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumPink200
                              .copyWith(height: 1.47))),
                  SizedBox(height: 36.v),
                  SizedBox(
                      height: 409.v,
                      width: 368.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 369.v,
                                width: 368.h,
                                decoration: BoxDecoration(
                                    color: appTheme.gray50001.withOpacity(0.15),
                                    borderRadius:
                                        BorderRadius.circular(20.h)))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 36.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGroup7786,
                                          height: 42.adaptSize,
                                          width: 42.adaptSize),
                                      SizedBox(height: 22.v),
                                      Text("Water Bill",
                                          style:
                                              theme.textTheme.headlineMedium),
                                      SizedBox(height: 4.v),
                                      Text("David Joshii",
                                          style:
                                              CustomTextStyles.titleMedium16_1),
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
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 14.h, vertical: 9.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlueGrayTL10,
                                          fillColor: Colors.red[100]),
                                      SizedBox(height: 16.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "350.00",
                                                style: theme
                                                    .textTheme.displaySmall),
                                            TextSpan(
                                                text: "INR",
                                                style: CustomTextStyles
                                                    .titleLargeSecondaryContainer_2)
                                          ]),
                                          textAlign: TextAlign.center),
                                      SizedBox(height: 20.v),
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
                                      SizedBox(height: 18.v),
                                      Divider(),
                                      SizedBox(height: 16.v),
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
                                    ])))
                      ])),
                  CustomElevatedButton(
                      text: "Pay Now",
                      margin:
                          EdgeInsets.only(left: 26.h, top: 42.v, right: 26.h),
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

  /// Navigates to the waterBillPaymentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the waterBillPaymentScreen.
  onTapPaynow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.waterBillPaymentScreen);
  }
}
