import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/person_to_person_confirmation_successful_transfer_screen/person_to_person_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonToPersonTransferScreen extends StatelessWidget {
  var name, accNo, amt;
  PersonToPersonTransferScreen(this.name, this.accNo, this.amt, {Key? key})
      : super(key: key);

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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 46.v),
                child: Column(children: [
                  Text("Are you sure?", style: theme.textTheme.headlineLarge),
                  Container(
                      width: 356.h,
                      margin: EdgeInsets.only(left: 6.h, top: 12.v, right: 5.h),
                      child: Text(
                          "We care about your privacy. please make sure that you want to transfer money.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumGray50001_3
                              .copyWith(height: 1.47))),
                  SizedBox(height: 42.v),
                  SizedBox(
                      height: 406.v,
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
                                          imagePath:
                                              ImageConstant.imgEllipse1754,
                                          height: 105.adaptSize,
                                          width: 105.adaptSize,
                                          radius: BorderRadius.circular(37.h)),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 94.h, top: 22.v),
                                              child: Text("$name",
                                                  style: theme.textTheme
                                                      .headlineMedium))),
                                      SizedBox(height: 6.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("$accNo",
                                              style: CustomTextStyles
                                                  .titleMedium16_1)),
                                      Container(
                                          width: 249.h,
                                          height: 35.v,
                                          decoration: BoxDecoration(
                                              color: Color(0XFF1CCD9D)
                                                  .withOpacity(0.15),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: Text(
                                              'Transactions Status: Sent',
                                              style: TextStyle(
                                                  color: Color(0XFF1CCD9D)),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
                                      SizedBox(height: 15.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "$amt",
                                                style: CustomTextStyles
                                                    .displaySmallRegular_1),
                                            TextSpan(
                                                text: "INR",
                                                style: CustomTextStyles
                                                    .titleLargeSecondaryContainerRegular_2)
                                          ]),
                                          textAlign: TextAlign.center),
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
                                    ])))
                      ])),
                  CustomElevatedButton(
                    text: "Send Money",
                    margin: EdgeInsets.only(left: 26.h, top: 45.v, right: 26.h),
                    onTap: () {
                      onTapcon(context);
                    },
                  )
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

  // onTapcon(BuildContext context) {
  //   Navigator.pushNamed(
  //       context, AppRoutes.personToPersonConfirmationSuccessfulTransferScreen);
  // }
  onTapcon(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              PersonToPersonConfirmationSuccessfulTransferScreen(
                  name, accNo, amt)),
    );
  }
}
