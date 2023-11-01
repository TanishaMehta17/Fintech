import '../rd_payment_screen/widgets/investmentamoun1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class RdPaymentScreen extends StatelessWidget {
  RdPaymentScreen({Key? key}) : super(key: key);

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
                title: AppbarSubtitle2(text: "Pre - Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 35.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 17.5.v),
                                    child: SizedBox(
                                        width: 363.h,
                                        child: Divider(
                                            height: 1.v,
                                            thickness: 1.v,
                                            color: appTheme.gray50001
                                                .withOpacity(0.5))));
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Investmentamoun1ItemWidget();
                              })),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 23.h, top: 39.v, right: 30.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                    width: 81.h,
                                    child: Text("Auto\nRenewal",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleLargeGray700
                                            .copyWith(height: 1.47))),
                                Spacer(flex: 58),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 19.v, bottom: 15.v),
                                    child: Text("ON",
                                        style: CustomTextStyles
                                            .titleLargeBlack90003)),
                                Spacer(flex: 41),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 19.v, bottom: 15.v),
                                    child: Text("YES",
                                        style: CustomTextStyles
                                            .titleLargeBlack90003))
                              ])),
                      CustomElevatedButton(
                          text: "Submit",
                          margin: EdgeInsets.fromLTRB(23.h, 35.v, 23.h, 2.v),
                          onTap: () {
                            onTapSubmit(context);
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

  /// Navigates to the passwordForRdScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the passwordForRdScreen.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passwordForRdScreen);
  }
}
