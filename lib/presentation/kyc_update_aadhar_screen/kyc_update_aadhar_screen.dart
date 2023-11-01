import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class KycUpdateAadharScreen extends StatelessWidget {
  KycUpdateAadharScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 95.v,
                leadingWidth: 78.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 31.h, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "KYC Update _ Aadhar \n Address"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin: EdgeInsets.only(
                          left: 29.h, right: 29.h, bottom: 18.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 45.h, vertical: 21.v),
                child: Column(children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgFrame8018,
                      height: 225.v,
                      width: 322.h),
                  CustomElevatedButton(
                      text: "Browse from Storage",
                      margin: EdgeInsets.only(top: 81.v, right: 22.h),
                      alignment: Alignment.centerLeft),
                  SizedBox(height: 80.v),
                  SizedBox(
                      height: 62.v,
                      width: 314.h,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 60.v,
                                width: 314.h,
                                decoration: BoxDecoration(
                                    color: appTheme.gray50001.withOpacity(0.15),
                                    borderRadius:
                                        BorderRadius.circular(10.h)))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                width: 207.h,
                                margin: EdgeInsets.only(left: 50.h),
                                child: Text("KYC Update _ Aadhar \n Address",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleLargeBluegray10002
                                        .copyWith(height: 1.47))))
                      ])),
                  CustomElevatedButton(
                    text: "Submit",
                    margin: EdgeInsets.fromLTRB(8.h, 69.v, 14.h, 5.v),
                    onTap: () {
                      onTapkyadcon(context);
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

  onTapkyadcon(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.kycConfirmationSuccessfulTransferScreen);
  }
}
