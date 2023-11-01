import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class FasTagDetailsScreen extends StatelessWidget {
  FasTagDetailsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                title: AppbarSubtitle3(text: "FasTag"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: appTheme.gray50001.withOpacity(0.25),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5),
                              child: Container(
                                  height: 100.adaptSize,
                                  width: 100.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.h, vertical: 26.v),
                                  decoration: AppDecoration.fillGray.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                height: 8.v,
                                                width: 76.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 9.v),
                                                decoration: BoxDecoration(
                                                    color: appTheme.amber500,
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                            bottom:
                                                                Radius.circular(
                                                                    3.h))))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: SizedBox(
                                                height: 44.v,
                                                width: 76.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCamera,
                                                          height: 44.v,
                                                          width: 76.h,
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              height: 20.v,
                                                              width: 59.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 9.v),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topRight,
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(top: 5.v),
                                                                            child: SizedBox(width: 48.h, child: Divider(color: appTheme.orange700)))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: SizedBox(
                                                                            height: 20.v,
                                                                            width: 59.h,
                                                                            child: Stack(alignment: Alignment.bottomRight, children: [
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: RichText(
                                                                                      text: TextSpan(children: [
                                                                                        TextSpan(text: "Fas", style: CustomTextStyles.bodyMediumAudiowideOrange700),
                                                                                        TextSpan(text: "Tag", style: CustomTextStyles.bodyMediumAudiowideGreen800)
                                                                                      ]),
                                                                                      textAlign: TextAlign.left)),
                                                                              Align(alignment: Alignment.bottomRight, child: SizedBox(width: 37.h, child: Divider(color: appTheme.green800, endIndent: 6.h)))
                                                                            ])))
                                                                  ])))
                                                    ])))
                                      ])))),
                      SizedBox(height: 80.v),
                      CustomElevatedButton(
                          height: 40.v,
                          width: 177.h,
                          text: "xxxxxxxx",
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          alignment: Alignment.center),
                      SizedBox(height: 81.v),
                      Text("South Indian Bank ",
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 10.v),
                      Text("Customer Detials",
                          style: CustomTextStyles.titleSmallBlack90003_1),
                      Padding(
                          padding: EdgeInsets.only(top: 10.v, right: 6.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text("Name :",
                                        style: theme.textTheme.titleSmall)),
                                Text("xxxxxxxx",
                                    style: theme.textTheme.titleSmall)
                              ])),
                      Padding(
                          padding: EdgeInsets.only(top: 5.v, right: 6.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("FASTag :",
                                    style: theme.textTheme.titleSmall),
                                Text("xxxxxxxx",
                                    style: theme.textTheme.titleSmall)
                              ])),
                      SizedBox(height: 3.v),
                      Text("Amount ",
                          style: CustomTextStyles.titleSmallBlack90003_1),
                      SizedBox(height: 10.v),
                      Text("xxxxxxxx", style: theme.textTheme.titleSmall),
                      CustomElevatedButton(
                          text: "Proceed",
                          margin: EdgeInsets.fromLTRB(32.h, 80.v, 32.h, 4.v),
                          onTap: () {
                            onTapProceed(context);
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

  /// Navigates to the fasTagPaymentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the fasTagPaymentScreen.
  onTapProceed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fasTagPaymentScreen);
  }
}
