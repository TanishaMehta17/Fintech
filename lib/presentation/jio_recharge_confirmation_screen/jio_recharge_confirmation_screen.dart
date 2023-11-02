import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/jio_mobile_recharge_screen/jio_mobile_recharge_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class JioRechargeConfirmationScreen extends StatelessWidget {
  var amt;
  JioRechargeConfirmationScreen(this.amt, {Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
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
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 35.v),
                child: Column(children: [
                  SizedBox(height: 19.v),
                  Text("Are you sure?", style: theme.textTheme.headlineLarge),
                  Container(
                      width: 273.h,
                      margin:
                          EdgeInsets.only(left: 47.h, top: 12.v, right: 46.h),
                      child: Text(
                          "Please make sure that you want to Recharge tour mobile",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumPink200
                              .copyWith(height: 1.47))),
                  SizedBox(height: 31.v),
                  SizedBox(
                      height: 405.v,
                      width: 368.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 36.h, vertical: 42.v),
                                decoration: AppDecoration.fillGray50001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 18.v),
                                      Text("Jio",
                                          style:
                                              theme.textTheme.headlineMedium),
                                      SizedBox(height: 6.v),
                                      Text("+1 123 3698 789",
                                          style:
                                              CustomTextStyles.titleMedium16_1),
                                      SizedBox(height: 19.v),
                                      Container(
                                          // width: 249.h,
                                          //padding: EdgeInsets.all(8.h),
                                          decoration: AppDecoration
                                              .outlineBluegray500113
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Container(
                                            width: 249.h,
                                            padding: EdgeInsets.all(8.h),
                                            decoration: BoxDecoration(
                                                color: Colors.red[100],
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            // width: 50,
                                            // height: 50,
                                            // decoration: BoxDecoration(
                                            //     color: Colors.red[100]),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "Transactions Status:",
                                                      style: CustomTextStyles
                                                          .titleMediumPrimary),
                                                  TextSpan(
                                                      text: " Pending",
                                                      style: CustomTextStyles
                                                          .titleMediumPrimary)
                                                ]),
                                                textAlign: TextAlign.center),
                                          )),
                                      SizedBox(height: 16.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "$amt",
                                                style: theme
                                                    .textTheme.displaySmall),
                                            TextSpan(
                                                text: "INR",
                                                style: CustomTextStyles
                                                    .titleLargeSecondaryContainer_2)
                                          ]),
                                          textAlign: TextAlign.left),
                                      SizedBox(height: 13.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Network",
                                                style: CustomTextStyles
                                                    .titleMedium_1),
                                            Text("Jio",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900_4)
                                          ]),
                                      SizedBox(height: 18.v),
                                      Divider(),
                                      SizedBox(height: 14.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.v, bottom: 2.v),
                                                child: Text("Transfer Fee",
                                                    style: CustomTextStyles
                                                        .titleMedium_1)),
                                            RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "0.00",
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray900_1),
                                                  TextSpan(
                                                      text: "INR",
                                                      style: theme
                                                          .textTheme.labelSmall)
                                                ]),
                                                textAlign: TextAlign.left)
                                          ])
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgDownload3,
                            height: 75.adaptSize,
                            width: 75.adaptSize,
                            radius: BorderRadius.circular(35.h),
                            alignment: Alignment.topCenter)
                      ])),
                  CustomElevatedButton(
                      text: "Pay Now",
                      margin:
                          EdgeInsets.only(left: 26.h, top: 58.v, right: 26.h),
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

  /// Navigates to the jioMobileRechargeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the jioMobileRechargeScreen.
  // onTapPaynow(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.jioMobileRechargeScreen);
  // }
  onTapPaynow(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => JioMobileRechargeScreen(amt)),
    );
  }
}
