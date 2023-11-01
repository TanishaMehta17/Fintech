import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class BirthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen
    extends StatelessWidget {
  BirthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen({Key? key})
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
                    imagePath: ImageConstant.imgProfile,
                    margin: EdgeInsets.only(left: 29.h, top: 5.v, bottom: 5.v)),
                title: AppbarSubtitle2(
                    text: "Confirmation", margin: EdgeInsets.only(left: 70.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Transfer Successful!",
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 17.v),
                      Text("Your money has been transferred successfully",
                          style: CustomTextStyles.titleMediumGray50001_3),
                      SizedBox(height: 72.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage160,
                          height: 302.v,
                          width: 367.h),
                      CustomElevatedButton(
                          text: "View Receipt",
                          margin: EdgeInsets.fromLTRB(26.h, 72.v, 25.h, 2.v),
                          onTap: () {
                            onTapViewreceipt(context);
                          })
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the birthdayGiftGiftCardConfirmationSuccessfulTransferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the birthdayGiftGiftCardConfirmationSuccessfulTransferScreen.
  onTapViewreceipt(BuildContext context) {
    Navigator.pushNamed(context,
        AppRoutes.birthdayGiftGiftCardConfirmationSuccessfulTransferScreen);
  }
}
