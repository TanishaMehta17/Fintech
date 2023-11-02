import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/transfer_confirmation_bank_to_bank_indian_screen/transfer_confirmation_bank_to_bank_indian_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class BankToBankTransferConfirmationIndianScreen extends StatelessWidget {
  var name, accNo, amt;
  BankToBankTransferConfirmationIndianScreen(this.name, this.accNo, this.amt,
      {Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  String radioGroup = "";

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
                    text: "Confirmation", margin: EdgeInsets.only(left: 68.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 25.v),
                child: Column(children: [
                  SizedBox(height: 47.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 29.h, right: 29.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Recipient",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90019),
                                    SizedBox(height: 13.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12.v),
                                        decoration: AppDecoration
                                            .outlineBluegray500111
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse175,
                                                  height: 51.adaptSize,
                                                  width: 51.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      25.h),
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 2.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 5.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 5
                                                                              .v),
                                                                  child: Text(
                                                                      "$name",
                                                                      style: CustomTextStyles
                                                                          .titleLargeBluegray900_1)),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgEdit2,
                                                                  height: 16
                                                                      .adaptSize,
                                                                  width: 16
                                                                      .adaptSize,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          bottom:
                                                                              12.v))
                                                            ]),
                                                        SizedBox(height: 2.v),
                                                        Text("$accNo",
                                                            style: CustomTextStyles
                                                                .titleMediumGray5000116_1)
                                                      ]))
                                            ])),
                                    SizedBox(height: 25.v),
                                    Text("Bank",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90019),
                                    SizedBox(height: 24.v),
                                    // Container(
                                    //     width: 369.h,
                                    //     padding: EdgeInsets.symmetric(
                                    //         horizontal: 21.h, vertical: 15.v),
                                    //     decoration: AppDecoration
                                    //         .outlineBluegray500111
                                    //         .copyWith(
                                    //             borderRadius: BorderRadiusStyle
                                    //                 .roundedBorder10),
                                    //     child: CustomRadioButton(
                                    //         text: "Indian Bank",
                                    //         value: "Indian Bank",
                                    //         groupValue: radioGroup,
                                    //         margin: EdgeInsets.only(right: 6.h),
                                    //         padding: EdgeInsets.fromLTRB(
                                    //             15.h, 15.v, 30.h, 15.v),
                                    //         onChange: (value) {
                                    //           radioGroup = value;
                                    //         })),

                                    Container(
                                        width: 369.h,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21.h, vertical: 14.v),
                                        decoration: AppDecoration
                                            .outlineBluegray500111
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: CustomRadioButton(
                                            logoImagePath:
                                                ImageConstant.imgRectangle1455,
                                            width: 30.h,
                                            text: "Indain Bank",
                                            value: "Indain Bank",
                                            groupValue: radioGroup,
                                            margin: EdgeInsets.only(right: 6.h),
                                            padding: EdgeInsets.fromLTRB(
                                                15.h, 15.v, 30.h, 15.v),
                                            textStyle: CustomTextStyles
                                                .bodyLargeBluegray90016_2,
                                            isRightCheck: true,
                                            onChange: (value) {
                                              radioGroup = value;
                                            })),
                                    SizedBox(height: 50.v),
                                    Text("Transfer Details",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90019),
                                    SizedBox(height: 18.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 31.h, vertical: 18.v),
                                        decoration: AppDecoration.fillGray50001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.v),
                                                        child: Text(
                                                            "Transfer Amount",
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium)),
                                                    RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "$amt",
                                                              style: CustomTextStyles
                                                                  .titleLargeBluegray900),
                                                          TextSpan(
                                                              text: "INR",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left)
                                                  ]),
                                              SizedBox(height: 20.v),
                                              Divider(),
                                              SizedBox(height: 18.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.v),
                                                        child: Text(
                                                            "Transfer Fee",
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium)),
                                                    RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "0.00",
                                                              style: CustomTextStyles
                                                                  .titleLargeBluegray900),
                                                          TextSpan(
                                                              text: "INR",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left)
                                                  ]),
                                              SizedBox(height: 20.v),
                                              Divider(),
                                              SizedBox(height: 18.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.v),
                                                        child: Text("Total",
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium)),
                                                    RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "$amt",
                                                              style: CustomTextStyles
                                                                  .titleLargeBluegray900),
                                                          TextSpan(
                                                              text: "INR",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left)
                                                  ]),
                                              SizedBox(height: 5.v)
                                            ])),
                                    CustomElevatedButton(
                                        text: "Continue",
                                        margin: EdgeInsets.only(
                                            left: 26.h, top: 50.v, right: 26.h),
                                        onTap: () {
                                          onTapContinue(context);
                                        },
                                        alignment: Alignment.center)
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

  /// Navigates to the transferConfirmationBankToBankIndianScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the transferConfirmationBankToBankIndianScreen.
  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(
  //       context, AppRoutes.transferConfirmationBankToBankIndianScreen);
  // }
  onTapContinue(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              TransferConfirmationBankToBankIndianScreen(name, accNo, amt)),
    );
  }
}
