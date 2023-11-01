import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PersonToPersonConfirmationScreen extends StatelessWidget {
  PersonToPersonConfirmationScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  var amt;
  // PersonToPersonConfirmationScreen(this.amt) {
  //   //amt = amt;
  // }

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
                    text: "Confirmation", margin: EdgeInsets.only(left: 69.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 40.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Recipient",
                          style: CustomTextStyles.titleMediumBluegray90019),
                      SizedBox(height: 13.v),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 15.v),
                          decoration: AppDecoration.outlineBluegray500111
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1753,
                                    height: 51.adaptSize,
                                    width: 51.adaptSize,
                                    radius: BorderRadius.circular(25.h)),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 3.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 3.v),
                                                    child: Text("Jonathan",
                                                        style: CustomTextStyles
                                                            .titleLargeBluegray900_1)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgEditGray50001,
                                                    height: 14.v,
                                                    width: 11.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 12.v))
                                              ]),
                                          SizedBox(height: 2.v),
                                          Text("1******6103",
                                              style: CustomTextStyles
                                                  .titleMediumGray5000116_1)
                                        ]))
                              ])),
                      SizedBox(height: 43.v),
                      Text("Card",
                          style: CustomTextStyles.titleMediumBluegray90019),
                      SizedBox(height: 15.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 21.h, vertical: 15.v),
                          decoration: AppDecoration.outlineBluegray500111
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(children: [
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
                                          .titleMediumGray5000116_1)
                                ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgVolumePrimary26x26,
                                height: 26.adaptSize,
                                width: 26.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 12.v))
                          ])),
                      SizedBox(height: 43.v),
                      Text("Transfer Details",
                          style: CustomTextStyles.titleMediumBluegray90019),
                      SizedBox(height: 18.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 18.v),
                          decoration: AppDecoration.fillGray50001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 5.v),
                                      child: Text("Transfer Amount",
                                          style: theme.textTheme.titleMedium)),
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '$amt',
                                            style: CustomTextStyles
                                                .titleLargeBluegray900),
                                        TextSpan(
                                            text: "INR",
                                            style: theme.textTheme.bodySmall)
                                      ]),
                                      textAlign: TextAlign.left)
                                ]),
                            SizedBox(height: 20.v),
                            Divider(),
                            SizedBox(height: 18.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 5.v),
                                      child: Text("Transfer Fee",
                                          style: theme.textTheme.titleMedium)),
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "0.00",
                                            style: CustomTextStyles
                                                .titleLargeBluegray900),
                                        TextSpan(
                                            text: "INR",
                                            style: theme.textTheme.bodySmall)
                                      ]),
                                      textAlign: TextAlign.left)
                                ]),
                            SizedBox(height: 20.v),
                            Divider(),
                            SizedBox(height: 18.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 5.v),
                                      child: Text("Total",
                                          style: theme.textTheme.titleMedium)),
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: '$amt',
                                            style: CustomTextStyles
                                                .titleLargeBluegray900),
                                        TextSpan(
                                            text: "INR",
                                            style: theme.textTheme.bodySmall)
                                      ]),
                                      textAlign: TextAlign.left)
                                ]),
                            SizedBox(height: 5.v)
                          ])),
                      CustomElevatedButton(
                          text: "Continue",
                          margin: EdgeInsets.fromLTRB(26.h, 43.v, 26.h, 2.v),
                          onTap: () {
                            print('$amt');
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

  /// Navigates to the personToPersonTransferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the personToPersonTransferScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personToPersonTransferScreen);
  }
}
