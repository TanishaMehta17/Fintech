import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/birthday/birthday.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BirthdayGiftGiftCardTransferConfirmationScreen extends StatelessWidget {
  BirthdayGiftGiftCardTransferConfirmationScreen({Key? key}) : super(key: key);

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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 58.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 649.v,
                              width: 368.h,
                              margin: EdgeInsets.only(
                                  left: 30.h, right: 30.h, bottom: 5.v),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 369.v,
                                        width: 368.h,
                                        margin: EdgeInsets.only(bottom: 96.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.gray50001
                                                .withOpacity(0.15),
                                            borderRadius:
                                                BorderRadius.circular(20.h)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("Are you sure?",
                                                  style: theme
                                                      .textTheme.headlineLarge),
                                              SizedBox(height: 12.v),
                                              SizedBox(
                                                  width: 356.h,
                                                  child: Text(
                                                      "We care about your privacy. please make sure that you want to transfer money.",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .titleMediumGray50001_3
                                                          .copyWith(
                                                              height: 1.47))),
                                              SizedBox(height: 7.v),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse1752,
                                                  height: 95.adaptSize,
                                                  width: 95.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      37.h)),
                                              SizedBox(height: 3.v),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("David Miller",
                                                      style: theme.textTheme
                                                          .headlineMedium)),
                                              SizedBox(height: 6.v),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text("1******2135",
                                                      style: CustomTextStyles
                                                          .titleMedium16_1)),
                                              SizedBox(height: 19.v),
                                              CustomTextFormField(
                                                  width: 249.h,
                                                  controller:
                                                      group6763Controller,
                                                  hintText:
                                                      "Transactions Status: Pending",
                                                  hintStyle: CustomTextStyles
                                                      .titleMediumPrimary16_1,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 23.h,
                                                          vertical: 9.v),
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .outlineBlack,
                                                  fillColor: Colors.red[100]),
                                              SizedBox(height: 15.v),
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "150.00",
                                                        style: CustomTextStyles
                                                            .displaySmallRegular_1),
                                                    TextSpan(
                                                        text: "INR",
                                                        style: CustomTextStyles
                                                            .titleLargeSecondaryContainerRegular_2)
                                                  ]),
                                                  textAlign: TextAlign.left),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.h,
                                                      top: 14.v,
                                                      right: 30.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 1.v),
                                                            child: Text(
                                                                "Card Type",
                                                                style: CustomTextStyles
                                                                    .titleMedium_1)),
                                                        Text("Debit Card",
                                                            style: CustomTextStyles
                                                                .titleMediumBluegray900_4)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 16.v),
                                                  child: Divider(
                                                      indent: 30.h,
                                                      endIndent: 30.h)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.h,
                                                      top: 16.v,
                                                      right: 30.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Transfer Fee",
                                                            style: CustomTextStyles
                                                                .titleMedium_1),
                                                        RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          "0.00",
                                                                      style: CustomTextStyles
                                                                          .bodyLargeBluegray90018_1),
                                                                  TextSpan(
                                                                      text:
                                                                          "INR",
                                                                      style: CustomTextStyles
                                                                          .bodySmall_2)
                                                                ]),
                                                            textAlign:
                                                                TextAlign.left)
                                                      ])),
                                              SizedBox(height: 50),
                                              CustomElevatedButton(
                                                  text: "Send",
                                                  margin: EdgeInsets.only(
                                                      left: 20.h,
                                                      top: 62.v,
                                                      right: 20.h),
                                                  onTap: () {
                                                    onTapSend(context);
                                                  })
                                            ])))
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

  /// Navigates to the birthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the birthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen.
  onTapSend(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BirthdayPasswordScreen()),
    );
  }
}
