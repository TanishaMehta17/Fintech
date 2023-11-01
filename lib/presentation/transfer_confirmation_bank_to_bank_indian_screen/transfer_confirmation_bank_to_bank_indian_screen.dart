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
class TransferConfirmationBankToBankIndianScreen extends StatelessWidget {
  TransferConfirmationBankToBankIndianScreen({Key? key}) : super(key: key);

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
                    text: "Confirmation", margin: EdgeInsets.only(left: 68.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 36.v),
                child: Column(children: [
                  SizedBox(height: 21.v),
                  Text("Are you sure?", style: theme.textTheme.headlineLarge),
                  Container(
                      width: 356.h,
                      margin: EdgeInsets.only(left: 6.h, top: 12.v, right: 6.h),
                      child: Text(
                          "We care about your privacy. please make sure that you want to transfer money.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumGray50001_3
                              .copyWith(height: 1.47))),
                  SizedBox(height: 29.v),
                  SizedBox(
                      height: 406.v,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 84.h, top: 17.v),
                                          child: Text("David John",
                                              style: theme
                                                  .textTheme.headlineMedium)),
                                      SizedBox(height: 6.v),
                                      Text("2******6125",
                                          style:
                                              CustomTextStyles.titleMedium16_1),
                                      CustomTextFormField(
                                          controller: group6763Controller,
                                          margin: EdgeInsets.only(
                                              left: 22.h,
                                              top: 19.v,
                                              right: 22.h),
                                          hintText:
                                              "Transactions Status: Pending",
                                          hintStyle: CustomTextStyles
                                              .titleMediumPrimary16_1,
                                          textInputAction: TextInputAction.done,
                                          alignment: Alignment.center,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 23.h, vertical: 9.v),
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
                                                    text: "250.00",
                                                    style: CustomTextStyles
                                                        .displaySmallRegular_1),
                                                TextSpan(
                                                    text: "INR",
                                                    style: CustomTextStyles
                                                        .titleLargeSecondaryContainerRegular_2)
                                              ]),
                                              textAlign: TextAlign.center)),
                                      SizedBox(height: 14.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.v),
                                                child: Text("Card Type",
                                                    style: CustomTextStyles
                                                        .titleMedium_1)),
                                            Text("Debit Card",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900_4)
                                          ]),
                                      SizedBox(height: 16.v),
                                      Divider(),
                                      SizedBox(height: 14.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 2.v, bottom: 1.v),
                                                child: Text("Transfer Fee",
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
                                          ])
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse17575x75,
                            height: 75.adaptSize,
                            width: 75.adaptSize,
                            radius: BorderRadius.circular(37.h),
                            alignment: Alignment.topCenter)
                      ])),
                  CustomElevatedButton(
                      text: "Send",
                      margin:
                          EdgeInsets.only(left: 26.h, top: 56.v, right: 26.h),
                      onTap: () {
                        onTapSend(context);
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

  /// Navigates to the bankToBankConfirmationSuccessfulTransferIndianScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bankToBankConfirmationSuccessfulTransferIndianScreen.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context,
        AppRoutes.bankToBankConfirmationSuccessfulTransferIndianScreen);
  }
}
