import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/home_loan_detail_page_information_screen/home_loan_detail_page_information_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class LoanPaymentScreen extends StatelessWidget {
  var amt;
  LoanPaymentScreen(this.amt, {Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  bool isSelectedSwitch = false;

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
                title: AppbarSubtitle2(
                    text: "Payment Plan", margin: EdgeInsets.only(left: 67.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 33.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Reckoning",
                              style:
                                  CustomTextStyles.titleMediumBluegray90019)),
                      SizedBox(height: 16.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 18.v),
                          decoration: AppDecoration.fillGray50001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.v),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 3.v),
                                          child: Text("Loan Amount",
                                              style:
                                                  theme.textTheme.titleMedium)),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "$amt",
                                                style: CustomTextStyles
                                                    .titleLargeBluegray900),
                                            TextSpan(
                                                text: "INR",
                                                style:
                                                    theme.textTheme.bodySmall)
                                          ]),
                                          textAlign: TextAlign.left)
                                    ]),
                                SizedBox(height: 19.v),
                                Divider(),
                                SizedBox(height: 19.v),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 7.v),
                                          child: Text("Intrest",
                                              style:
                                                  theme.textTheme.titleMedium)),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 5.v),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "4800.00",
                                                    style: CustomTextStyles
                                                        .titleLargeBluegray900Regular_2),
                                                TextSpan(
                                                    text: "INR",
                                                    style: theme
                                                        .textTheme.bodySmall)
                                              ]),
                                              textAlign: TextAlign.left))
                                    ]),
                                SizedBox(height: 16.v),
                                Divider(),
                                SizedBox(height: 22.v),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 4.v),
                                          child: Text("Due Date",
                                              style:
                                                  theme.textTheme.titleMedium)),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Text("Nov 12, 2023",
                                              style: CustomTextStyles
                                                  .titleLargeBluegray900_1))
                                    ])
                              ])),
                      SizedBox(height: 38.v),
                      Text("Payment Breakdown",
                          style: CustomTextStyles.titleMediumBluegray90019),
                      Container(
                          margin: EdgeInsets.only(
                              left: 11.h, top: 33.v, right: 11.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 17.v),
                          decoration: AppDecoration.outlineBluegray500111
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 4.v),
                                    child: Text("Upcoming Payment",
                                        style: CustomTextStyles
                                            .titleMediumGray5000117)),
                                Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text("12 Jan",
                                        style: CustomTextStyles
                                            .titleLargeBluegray900_1))
                              ])),
                      Container(
                          margin: EdgeInsets.only(
                              left: 13.h, top: 36.v, right: 13.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 16.v),
                          decoration: AppDecoration.outlineBluegray500111
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 3.v, bottom: 2.v),
                                    child: Text("Amount",
                                        style: CustomTextStyles
                                            .titleMediumGray5000117)),
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "80.00",
                                          style: CustomTextStyles
                                              .titleLargeBluegray900),
                                      TextSpan(
                                          text: "INR",
                                          style: theme.textTheme.bodySmall)
                                    ]),
                                    textAlign: TextAlign.left)
                              ])),
                      Container(
                          margin:
                              EdgeInsets.only(left: 8.h, top: 36.v, right: 8.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 17.v),
                          decoration: AppDecoration.outlineBluegray500111
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 4.v),
                                    child: Text("Auto Payment",
                                        style: CustomTextStyles
                                            .titleMediumGray5000117)),
                                CustomSwitch(
                                    margin: EdgeInsets.symmetric(vertical: 2.v),
                                    value: isSelectedSwitch,
                                    onChange: (value) {
                                      isSelectedSwitch = value;
                                    })
                              ])),
                      CustomElevatedButton(
                          text: "Continue",
                          margin: EdgeInsets.fromLTRB(26.h, 36.v, 26.h, 2.v),
                          onTap: () {
                            onTapContinue(context);
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

  /// Navigates to the homeLoanPaymentDoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeLoanPaymentDoneScreen.
  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.homeLoanDetailPageInformationScreen);
  // }
  onTapContinue(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => HomeLoanDetailPageInformationScreen(amt)),
    );
  }
}
