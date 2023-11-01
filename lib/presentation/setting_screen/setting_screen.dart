import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';
import 'package:tanisha_s_application14/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Setting"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v),
                      onTap: () {
                        onTapCheckmarkone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 13.v),
                      Text("My Cards",
                          style: CustomTextStyles.titleMediumBluegray90019),
                      SizedBox(height: 20.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 14.v),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup6741,
                                height: 51.v,
                                width: 82.h),
                            Padding(
                                padding: EdgeInsets.only(left: 19.h, top: 5.v),
                                child: Column(children: [
                                  Text("Debit Card",
                                      style: CustomTextStyles
                                          .titleMediumBluegray900_3),
                                  SizedBox(height: 4.v),
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
                      SizedBox(height: 37.v),
                      Text("Card Settings",
                          style: CustomTextStyles.titleMediumBluegray90019),
                      SizedBox(height: 21.v),
                      SizedBox(
                          height: 63.v,
                          width: 368.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            // Align(
                            //     alignment: Alignment.topCenter,
                            //     child: Container(
                            //         padding: EdgeInsets.symmetric(
                            //             horizontal: 16.h, vertical: 19.v),
                            //         decoration: AppDecoration
                            //             .outlineBluegray500111
                            //             .copyWith(
                            //                 borderRadius: BorderRadiusStyle
                            //                     .roundedBorder10),
                            //         child: CustomSwitch(
                            //             value: isSelectedSwitch,
                            //             onChange: (value) {
                            //               isSelectedSwitch = value;
                            //             }))),
                            // Align(
                            //     alignment: Alignment.bottomLeft,
                            //     child: Padding(
                            //         padding: EdgeInsets.only(left: 21.h),
                            //         child: Row(
                            //             crossAxisAlignment:
                            //                 CrossAxisAlignment.start,
                            //             children: [
                            //               CustomImageView(
                            //                   svgPath:
                            //                       ImageConstant.imgMusicPrimary,
                            //                   height: 29.adaptSize,
                            //                   width: 29.adaptSize,
                            //                   margin: EdgeInsets.only(
                            //                       bottom: 18.v)),
                            //               Container(
                            //                   width: 38.h,
                            //                   margin: EdgeInsets.only(
                            //                       left: 14.h, top: 6.v),
                            //                   child: Text("Lock Card",
                            //                       maxLines: 2,
                            //                       overflow:
                            //                           TextOverflow.ellipsis,
                            //                       style: CustomTextStyles
                            //                           .titleMediumBluegray90016_1
                            //                           .copyWith(height: 1.47)))
                            //             ])))
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 2.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 15.v),
                                    decoration: AppDecoration
                                        .outlineBluegray500111
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 29.adaptSize,
                                              width: 29.adaptSize,
                                              margin:
                                                  EdgeInsets.only(left: 5.h),
                                              padding: EdgeInsets.all(6.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillIndigoA,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgMusicPrimary)),
                                          CustomSwitch(
                                              margin: EdgeInsets.only(
                                                  top: 3.v, bottom: 5.v),
                                              value: isSelectedSwitch1,
                                              onChange: (value) {
                                                isSelectedSwitch1 = value;
                                              })
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: 80.h,
                                    margin:
                                        EdgeInsets.only(left: 66.h, bottom: 20),
                                    child: Text("Lock Card",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleMediumBluegray90016_1
                                            .copyWith(height: 1.47))))
                          ])),
                      SizedBox(height: 13.v),
                      SizedBox(
                          height: 62.v,
                          width: 368.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 2.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 15.v),
                                    decoration: AppDecoration
                                        .outlineBluegray500111
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 29.adaptSize,
                                              width: 29.adaptSize,
                                              margin:
                                                  EdgeInsets.only(left: 5.h),
                                              padding: EdgeInsets.all(6.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillIndigoA,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgGroup6716)),
                                          CustomSwitch(
                                              margin: EdgeInsets.only(
                                                  top: 3.v, bottom: 5.v),
                                              value: isSelectedSwitch1,
                                              onChange: (value) {
                                                isSelectedSwitch1 = value;
                                              })
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: 80.h,
                                    margin: EdgeInsets.only(left: 66.h),
                                    child: Text("Deactivate Card",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleMediumBluegray90016_1
                                            .copyWith(height: 1.47))))
                          ])),
                      SizedBox(height: 36.v),
                      Text("Notifications",
                          style: CustomTextStyles.titleMediumBluegray90019),
                      SizedBox(height: 21.v),
                      SizedBox(
                          height: 62.v,
                          width: 368.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 2.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 14.v),
                                    decoration: AppDecoration
                                        .outlineBluegray500111
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgUserTealA70001,
                                              height: 29.adaptSize,
                                              width: 29.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 5.h, bottom: 4.v)),
                                          CustomSwitch(
                                              margin: EdgeInsets.only(
                                                  top: 4.v, bottom: 6.v),
                                              value: isSelectedSwitch2,
                                              onChange: (value) {
                                                isSelectedSwitch2 = value;
                                              })
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    width: 97.h,
                                    margin: EdgeInsets.only(left: 66.h),
                                    child: Text("Pop-Up Notifications",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleMediumBluegray90016_1
                                            .copyWith(height: 1.47))))
                          ])),
                      Spacer(),
                      CustomElevatedButton(
                          text: "Save",
                          margin: EdgeInsets.symmetric(horizontal: 26.h),
                          onTap: () {
                            onTapSave(context);
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

  /// Navigates to the notificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationScreen.
  onTapCheckmarkone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }

  /// Navigates to the dashboardProfileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the dashboardProfileScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardProfileScreen);
  }
}
