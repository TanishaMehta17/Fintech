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
class NetfiixPaymentAmountScreen extends StatelessWidget {
  NetfiixPaymentAmountScreen({Key? key}) : super(key: key);

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
                centerTitle: true,
                title: AppbarSubtitle2(text: "Pay Bill"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 51.v),
                child: Column(children: [
                  Text("Are you sure?", style: theme.textTheme.headlineLarge),
                  Container(
                      width: 319.h,
                      margin:
                          EdgeInsets.only(left: 24.h, top: 9.v, right: 23.h),
                      child: Text(
                          "Please make sure that you want to pay netflix bill",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumGray50001_3
                              .copyWith(height: 1.47))),
                  SizedBox(height: 44.v),
                  SizedBox(
                      height: 388.v,
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
                                          imagePath: ImageConstant.imgNetflix1,
                                          height: 75.adaptSize,
                                          width: 75.adaptSize),
                                      SizedBox(height: 14.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("Netflix",
                                              style: theme
                                                  .textTheme.headlineMedium)),
                                      SizedBox(height: 1.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("2******6125",
                                              style: CustomTextStyles
                                                  .titleMedium16_1)),
                                      CustomTextFormField(
                                          controller: group6763Controller,
                                          margin: EdgeInsets.only(
                                              left: 22.h,
                                              top: 13.v,
                                              right: 22.h),
                                          hintText:
                                              "Transactions Status: Unpaid",
                                          hintStyle: CustomTextStyles
                                              .titleMediumPrimary16_1,
                                          textInputAction: TextInputAction.done,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 26.h, vertical: 9.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlack,
                                          fillColor: Colors.red[100]),
                                      SizedBox(height: 16.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "1.00",
                                                style: CustomTextStyles
                                                    .displaySmallRegular_1),
                                            TextSpan(
                                                text: "INR",
                                                style: CustomTextStyles
                                                    .titleLargeSecondaryContainerRegular_2)
                                          ]),
                                          textAlign: TextAlign.left),
                                      SizedBox(height: 20.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 2.v, bottom: 1.v),
                                                child: Text("Transfer fee",
                                                    style: CustomTextStyles
                                                        .titleMedium_1)),
                                            RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "0.00",
                                                      style: CustomTextStyles
                                                          .bodyLargeBluegray90018_2),
                                                  TextSpan(
                                                      text: "INR",
                                                      style: theme
                                                          .textTheme.bodySmall)
                                                ]),
                                                textAlign: TextAlign.left)
                                          ]),
                                      SizedBox(height: 14.v),
                                      Divider(),
                                      SizedBox(height: 17.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Due Date",
                                                style: CustomTextStyles
                                                    .titleMedium_1),
                                            Text("March 12. 2021",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900_4)
                                          ])
                                    ])))
                      ])),
                  CustomElevatedButton(
                      text: "Pay Now",
                      margin:
                          EdgeInsets.only(left: 24.h, top: 51.v, right: 26.h),
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

  /// Navigates to the netflixConfirmationSuccessfulTransferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the netflixConfirmationSuccessfulTransferScreen.
  onTapPaynow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.netflixScreen);
  }
}
