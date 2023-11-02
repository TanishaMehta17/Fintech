import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/marrige_transfer_confirmation_one_screen/marrige_transfer_confirmation_one_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class MarrigeTransferConfirmationScreen extends StatelessWidget {
  var name, accNo, amt;
  MarrigeTransferConfirmationScreen(this.name, this.accNo, this.amt, {Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                title: AppbarSubtitle2(text: "Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 31.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 8.h, top: 2.v),
                          child: Text("Recipient",
                              style:
                                  CustomTextStyles.titleMediumBluegray90019)),
                      Container(
                          margin: EdgeInsets.only(left: 8.h, top: 13.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 27.h, vertical: 15.v),
                          decoration: AppDecoration.outlineBluegray500111
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse17551x51,
                                height: 51.adaptSize,
                                width: 51.adaptSize,
                                radius: BorderRadius.circular(25.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 24.h, top: 2.v, bottom: 3.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("$name",
                                          style: CustomTextStyles
                                              .titleLargeBluegray900_1),
                                      SizedBox(height: 3.v),
                                      Text("$accNo",
                                          style: CustomTextStyles
                                              .titleMediumPink20016_1)
                                    ]))
                          ])),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h, top: 36.v),
                          child: Text("Card",
                              style:
                                  CustomTextStyles.titleMediumBluegray90019)),
                      Container(
                          margin: EdgeInsets.only(left: 7.h, top: 15.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 21.h, vertical: 15.v),
                          decoration: AppDecoration.outlineBluegray500111
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup6741,
                                height: 51.v,
                                width: 82.h),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 24.h, top: 3.v, bottom: 4.v),
                                child: Column(children: [
                                  Text("Debit Card",
                                      style: CustomTextStyles
                                          .titleMediumBluegray900_3),
                                  SizedBox(height: 3.v),
                                  Text("Master Card",
                                      style: CustomTextStyles
                                          .titleMediumPink20016_1)
                                ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgVolumeIndigoA200,
                                height: 26.adaptSize,
                                width: 26.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 12.v))
                          ])),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h, top: 99.v),
                          child: Text("Transfer Details",
                              style:
                                  CustomTextStyles.titleMediumBluegray90019)),
                      Container(
                          margin: EdgeInsets.only(left: 6.h, top: 10.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 27.h, vertical: 21.v),
                          decoration: AppDecoration.fillGray50001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(right: 9.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5.v),
                                              child: Text("Transfer Amount",
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "$amt",
                                                    style: CustomTextStyles
                                                        .titleLargeBluegray900_2),
                                                TextSpan(
                                                    text: "INR",
                                                    style: theme
                                                        .textTheme.labelSmall)
                                              ]),
                                              textAlign: TextAlign.left)
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(top: 20.v),
                                    child: Divider(endIndent: 9.h)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 18.v, right: 9.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5.v),
                                              child: Text("Transfer Fee",
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "0.00",
                                                    style: CustomTextStyles
                                                        .titleLargeBluegray900_2),
                                                TextSpan(
                                                    text: "INR",
                                                    style: theme
                                                        .textTheme.labelSmall)
                                              ]),
                                              textAlign: TextAlign.left)
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(top: 20.v),
                                    child: Divider(endIndent: 9.h)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 18.v, right: 9.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5.v),
                                              child: Text("Total",
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "$amt",
                                                    style: CustomTextStyles
                                                        .titleLargeBluegray900_2),
                                                TextSpan(
                                                    text: "INR",
                                                    style: theme
                                                        .textTheme.labelSmall)
                                              ]),
                                              textAlign: TextAlign.left)
                                        ]))
                              ])),
                      CustomElevatedButton(
                          text: "Continue",
                          margin: EdgeInsets.only(
                              left: 34.h, top: 27.v, right: 26.h),
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

  /// Navigates to the marrigeTransferConfirmationOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the marrigeTransferConfirmationOneScreen.
  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(
  //       context, AppRoutes.marrigeTransferConfirmationOneScreen);
  // }
  onTapContinue(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              MarrigeTransferConfirmationOneScreen(name, accNo, amt)),
    );
  }
}
