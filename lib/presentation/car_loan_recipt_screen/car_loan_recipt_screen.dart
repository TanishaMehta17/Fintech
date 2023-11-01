import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class CarLoanReciptScreen extends StatelessWidget {
  CarLoanReciptScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 84.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 37.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Loan"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 23.h, vertical: 4.v),
                      onTap: () {
                        onTapCheckmarkone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 3.v),
                child: Column(children: [
                  SizedBox(height: 45.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 10.h, bottom: 5.v),
                              child: Column(children: [
                                CustomIconButton(
                                    height: 49.v,
                                    width: 50.h,
                                    padding: EdgeInsets.all(15.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgGroup133)),
                                SizedBox(height: 54.v),
                                Text("Congratulations!",
                                    style: theme.textTheme.headlineLarge),
                                Container(
                                    width: 332.h,
                                    margin: EdgeInsets.only(
                                        left: 29.h, top: 58.v, right: 30.h),
                                    child: Text(
                                        "Your loan request is accepted. you will\nget the loan soon.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .titleMediumPink200
                                            .copyWith(height: 1.47))),
                                SizedBox(height: 55.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage355,
                                    height: 245.v,
                                    width: 392.h),
                                CustomElevatedButton(
                                  text: "Done",
                                  margin: EdgeInsets.only(
                                      left: 38.h, top: 50.v, right: 38.h),
                                  onTap: () {
                                    onTapdone(context);
                                  },
                                )
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

  /// Navigates to the notificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationScreen.
  onTapCheckmarkone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }

  onTapdone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }
}
