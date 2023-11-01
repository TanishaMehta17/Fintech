import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_circleimage.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_title.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class MoerOptionsScreen extends StatelessWidget {
  MoerOptionsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 86.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 39.h, top: 4.v, bottom: 5.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "More  Options"),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgImage357,
                      margin:
                          EdgeInsets.symmetric(horizontal: 27.h, vertical: 3.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 52.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 36.h, right: 53.h, bottom: 5.v),
                              child: Column(children: [
                                Container(
                                    margin: EdgeInsets.only(left: 3.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 31.h, vertical: 16.v),
                                    decoration: AppDecoration.fillGray50001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5.v),
                                              child: Text("APY ",
                                                  style: theme.textTheme
                                                      .headlineLarge)),
                                          InkWell(
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightPrimary,
                                                height: 20.v,
                                                width: 11.h,
                                                margin: EdgeInsets.only(
                                                    top: 9.v, bottom: 12.v)),
                                            onTap: () {
                                              onTapAPY(context);
                                            },
                                          )
                                        ])),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 3.h, top: 57.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 31.h, vertical: 18.v),
                                    decoration: AppDecoration.fillGray50001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Open FD ",
                                              style: theme
                                                  .textTheme.headlineLarge),
                                          InkWell(
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightPrimary,
                                                height: 20.v,
                                                width: 11.h,
                                                margin: EdgeInsets.only(
                                                    top: 7.v, bottom: 10.v)),
                                            onTap: () {
                                              onTapFD(context);
                                            },
                                          )
                                        ])),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 3.h, top: 57.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 31.h, vertical: 18.v),
                                    decoration: AppDecoration.fillGray50001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Open RD",
                                              style: theme
                                                  .textTheme.headlineLarge),
                                          InkWell(
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightPrimary,
                                                height: 20.v,
                                                width: 11.h,
                                                margin: EdgeInsets.only(
                                                    top: 7.v, bottom: 10.v)),
                                            onTap: () {
                                              onTapRd(context);
                                            },
                                          )
                                        ])),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 3.h, top: 57.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 31.h, vertical: 19.v),
                                    decoration: AppDecoration.fillGray50001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("KYC Update",
                                              style: theme
                                                  .textTheme.headlineLarge),
                                          InkWell(
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightPrimary,
                                                height: 20.v,
                                                width: 11.h,
                                                margin: EdgeInsets.only(
                                                    top: 7.v, bottom: 10.v)),
                                            onTap: () {
                                              onTapKYC(context);
                                            },
                                          )
                                        ])),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 3.h, top: 57.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 31.h, vertical: 18.v),
                                    decoration: AppDecoration.fillGray50001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Fast Tag ",
                                              style: theme
                                                  .textTheme.headlineLarge),
                                          InkWell(
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightPrimary,
                                                height: 20.v,
                                                width: 11.h,
                                                margin: EdgeInsets.only(
                                                    top: 7.v, bottom: 10.v)),
                                            onTap: () {
                                              onTapFT(context);
                                            },
                                          )
                                        ])),
                                Container(
                                    margin:
                                        EdgeInsets.only(left: 3.h, top: 57.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 31.h, vertical: 21.v),
                                    decoration: AppDecoration.fillGray50001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 3.v),
                                              child: Text("NEFT,IMPS,RTGS",
                                                  style: theme.textTheme
                                                      .headlineSmall)),
                                          InkWell(
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightPrimary,
                                                height: 20.v,
                                                width: 11.h,
                                                margin: EdgeInsets.only(
                                                    top: 3.v, bottom: 7.v)),
                                            onTap: () {
                                              onTapNEFT(context);
                                            },
                                          )
                                        ])),
                                Container(
                                    margin:
                                        EdgeInsets.only(top: 43.v, right: 3.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 31.h, vertical: 23.v),
                                    decoration: AppDecoration.fillGray50001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Insurance",
                                              style: theme
                                                  .textTheme.headlineSmall),
                                          InkWell(
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightPrimary,
                                                height: 20.v,
                                                width: 11.h,
                                                margin: EdgeInsets.only(
                                                    top: 2.v, bottom: 5.v)),
                                            onTap: () {
                                              onTapInsurance(context);
                                            },
                                          )
                                        ]))
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

  onTapRd(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rdScreen);
  }

  onTapInsurance(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.familyInsuranceScreen);
  }

  onTapKYC(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.kycScreen);
  }

  onTapAPY(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.apyScreen);
  }

  onTapFD(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fdScreen);
  }

  onTapNEFT(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.neftScreen);
  }

  onTapFT(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fasTagScreen);
  }
}
