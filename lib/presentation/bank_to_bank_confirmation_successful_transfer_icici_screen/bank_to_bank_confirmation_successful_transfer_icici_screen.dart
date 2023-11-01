import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class BankToBankConfirmationSuccessfulTransferIciciScreen
    extends StatelessWidget {
  BankToBankConfirmationSuccessfulTransferIciciScreen({Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 76.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 29.h, top: 4.v, bottom: 4.v),
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
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 36.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 49.h, top: 49.v),
                          child: Text("Transfer Successful!",
                              style: theme.textTheme.headlineLarge))),
                  SizedBox(height: 15.v),
                  SizedBox(
                      width: 235.h,
                      child: Text(
                          "Your money has been transferred \nsuccessfully",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumGray50001_3
                              .copyWith(height: 1.47))),
                  SizedBox(height: 72.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage160,
                      height: 302.v,
                      width: 367.h),
                  CustomElevatedButton(
                      text: "View Receipt",
                      margin:
                          EdgeInsets.only(left: 30.h, top: 88.v, right: 29.h))
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
}
