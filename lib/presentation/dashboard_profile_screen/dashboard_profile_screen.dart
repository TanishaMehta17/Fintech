import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class DashboardProfileScreen extends StatelessWidget {
  DashboardProfileScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 600.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 27.h, vertical: 31.v),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        onTapProfile(context);
                                      },
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 19.h, vertical: 20.v),
                                          decoration: AppDecoration.fillPrimary
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 1.v),
                                                    child: Text(
                                                        "Manage Profile",
                                                        style: CustomTextStyles
                                                            .titleMediumWhiteA700_1)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height: 12.v,
                                                    width: 6.h,
                                                    margin: EdgeInsets.only(
                                                        top: 5.v,
                                                        right: 2.h,
                                                        bottom: 5.v))
                                              ])),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRowsubmitcompla(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 35.v,
                                                right: 22.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Submit Complaints",
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray900_3),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightSecondarycontainer,
                                                      height: 12.v,
                                                      width: 6.h,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 5.v))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRowcontact(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 45.v,
                                                right: 22.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Contact",
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray90019_1),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightSecondarycontainer,
                                                      height: 12.v,
                                                      width: 6.h,
                                                      margin: EdgeInsets.only(
                                                          top: 4.v,
                                                          bottom: 5.v))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRowsettings(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 48.v,
                                                right: 22.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Settings",
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray900_3),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightSecondarycontainer,
                                                      height: 12.v,
                                                      width: 6.h,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 5.v))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRowlogout(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                16.h, 47.v, 22.h, 2.v),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Log Out",
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray900_3),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightSecondarycontainer,
                                                      height: 12.v,
                                                      width: 6.h,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 5.v))
                                                ])))
                                  ]))))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the complainScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the complainScreen.
  onTapRowsubmitcompla(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.complainScreen);
  }

  /// Navigates to the contactScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the contactScreen.
  onTapRowcontact(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactScreen);
  }

  onTapProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the settingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the settingScreen.
  onTapRowsettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingScreen);
  }

  /// Navigates to the logoutScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the logoutScreen.
  onTapRowlogout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logoutScreen);
  }
}
