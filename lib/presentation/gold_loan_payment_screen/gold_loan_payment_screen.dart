import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/gold_loan_password_payment_screen/gold_loan_password_payment_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class GoldLoanPaymentScreen extends StatelessWidget {
  var amt;
  GoldLoanPaymentScreen(this.amt, {Key? key}) : super(key: key);

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
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Payment Plan"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 51.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Reckoning",
                          style: CustomTextStyles.titleMediumBluegray90019),
                      SizedBox(height: 16.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 19.v),
                          decoration: AppDecoration.fillGray50001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
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
                                                    .titleLargeBluegray900_2),
                                            TextSpan(
                                                text: "INR",
                                                style:
                                                    theme.textTheme.labelSmall)
                                          ]),
                                          textAlign: TextAlign.left)
                                    ]),
                                SizedBox(height: 19.v),
                                Divider(),
                                SizedBox(height: 18.v),
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
                                          padding: EdgeInsets.only(bottom: 3.v),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "4800.00",
                                                    style: CustomTextStyles
                                                        .titleLargeBluegray900_2),
                                                TextSpan(
                                                    text: "INR",
                                                    style: theme
                                                        .textTheme.labelSmall)
                                              ]),
                                              textAlign: TextAlign.left))
                                    ]),
                                SizedBox(height: 17.v),
                                Divider(),
                                SizedBox(height: 21.v),
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
                      SizedBox(height: 56.v),
                      Text("Payment Breakdown",
                          style: CustomTextStyles.titleMediumBluegray90019),
                      SizedBox(height: 13.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 18.v),
                          decoration: AppDecoration.outlineBluegray500111
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 3.v),
                                    child: Text("Upcoming Payment",
                                        style: CustomTextStyles
                                            .titleMediumPink20017)),
                                Text("12 Jan",
                                    style: CustomTextStyles
                                        .titleLargeBluegray900_1)
                              ])),
                      SizedBox(height: 9.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 16.v),
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
                                        EdgeInsets.symmetric(vertical: 3.v),
                                    child: Text("Amount",
                                        style: CustomTextStyles
                                            .titleMediumPink20017)),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "80.00",
                                              style: CustomTextStyles
                                                  .titleLargeBluegray900_2),
                                          TextSpan(
                                              text: "INR",
                                              style: theme.textTheme.labelSmall)
                                        ]),
                                        textAlign: TextAlign.left))
                              ])),
                      SizedBox(height: 9.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 18.v),
                          decoration: AppDecoration.outlineBluegray500111
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 3.v),
                                    child: Text("Auto Payment",
                                        style: CustomTextStyles
                                            .titleMediumPink20017)),
                                CustomSwitch(
                                    margin: EdgeInsets.only(top: 2.v),
                                    value: isSelectedSwitch,
                                    onChange: (value) {
                                      isSelectedSwitch = value;
                                    })
                              ])),
                      CustomElevatedButton(
                          text: "Continue",
                          margin: EdgeInsets.fromLTRB(26.h, 54.v, 26.h, 2.v),
                          onTap: () {
                            onTapContinue(context);
                          },
                          alignment: Alignment.center)
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

  /// Navigates to the goldLoanPasswordPaymentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the goldLoanPasswordPaymentScreen.
  onTapContinue(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => GoldLoanPasswordPaymentScreen(amt)),
    );
  }
}
