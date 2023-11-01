import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

import '../fd_screen/widgets/listnormalfdtex_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class FdScreen extends StatelessWidget {
  FdScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 72.v,
                leadingWidth: 83.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 36.h),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin: EdgeInsets.symmetric(horizontal: 24.h))
                ]),
            body: Container(
                height: 761.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Text("FD",
                          style: CustomTextStyles.titleLargeBluegray90022)),
                  SizedBox(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(left: 7.h, top: 31.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Recommended FD",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90019),
                                    SizedBox(height: 15.v),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 12.h,
                                              vertical: 26.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlineBlueGray
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 3.v,
                                                    bottom: 11.v,
                                                  ),
                                                  child: Text(
                                                    "Normal FD",
                                                    style: CustomTextStyles
                                                        .titleLargeBluegray900_1,
                                                  ),
                                                ),
                                                CustomElevatedButton(
                                                  height: 32.v,
                                                  width: 82.h,
                                                  text: "Apply",
                                                  margin: EdgeInsets.only(
                                                    left: 94.h,
                                                    bottom: 5.v,
                                                  ),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimaryTL7,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleMediumWhiteA70016,
                                                  onTap: () {
                                                    onTapApplyButton(context);
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 12.h,
                                              vertical: 26.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlineBlueGray
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 3.v,
                                                    bottom: 11.v,
                                                  ),
                                                  child: Text(
                                                    "Tax Saving FD",
                                                    style: CustomTextStyles
                                                        .titleLargeBluegray900_1,
                                                  ),
                                                ),
                                                CustomElevatedButton(
                                                  height: 32.v,
                                                  width: 82.h,
                                                  text: "Apply",
                                                  margin: EdgeInsets.only(
                                                    left: 74.h,
                                                    bottom: 5.v,
                                                  ),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimaryTL7,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleMediumWhiteA70016,
                                                  onTap: () {
                                                    onTaptaxButton(context);
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 12.h,
                                              vertical: 26.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlineBlueGray
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 3.v,
                                                    bottom: 11.v,
                                                  ),
                                                  child: Text(
                                                    "Cumulative FD",
                                                    style: CustomTextStyles
                                                        .titleLargeBluegray900_1,
                                                  ),
                                                ),
                                                CustomElevatedButton(
                                                  height: 32.v,
                                                  width: 82.h,
                                                  text: "Apply",
                                                  margin: EdgeInsets.only(
                                                    left: 64.h,
                                                    bottom: 5.v,
                                                  ),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimaryTL7,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleMediumWhiteA70016,
                                                  onTap: () {
                                                    onTapcumButton(context);
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 12.h,
                                              vertical: 26.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlineBlueGray
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 3.v,
                                                    bottom: 11.v,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20.0),
                                                    child: Text(
                                                      "Non- comulative FD",
                                                      style: CustomTextStyles
                                                          .titleLargeBluegray900_1,
                                                    ),
                                                  ),
                                                ),
                                                CustomElevatedButton(
                                                  height: 32.v,
                                                  width: 82.h,
                                                  text: "Apply",
                                                  margin: EdgeInsets.only(
                                                    left: 24.h,
                                                    bottom: 5.v,
                                                  ),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimaryTL7,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleMediumWhiteA70016,
                                                  onTap: () {
                                                    onTapncumButton(context);
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 12.h,
                                              vertical: 26.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlineBlueGray
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 3.v,
                                                    bottom: 11.v,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 0),
                                                    child: Text(
                                                      "Senior Citizen FD",
                                                      style: CustomTextStyles
                                                          .titleLargeBluegray900_1,
                                                    ),
                                                  ),
                                                ),
                                                CustomElevatedButton(
                                                  height: 32.v,
                                                  width: 82.h,
                                                  text: "Apply",
                                                  margin: EdgeInsets.only(
                                                    left: 44.h,
                                                    bottom: 5.v,
                                                  ),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimaryTL7,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleMediumWhiteA70016,
                                                  onTap: () {
                                                    onTapseniorButton(context);
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ])))),
                  CustomIconButton(
                      height: 49.v,
                      width: 50.h,
                      margin: EdgeInsets.only(left: 26.h, top: 89.v),
                      padding: EdgeInsets.all(13.h),
                      decoration: IconButtonStyleHelper.fillTealA,
                      alignment: Alignment.topLeft,
                      child: CustomImageView(svgPath: ImageConstant.imgTicket)),
                  CustomIconButton(
                      height: 49.v,
                      width: 50.h,
                      margin: EdgeInsets.only(left: 26.h, top: 200.v),
                      padding: EdgeInsets.all(13.h),
                      decoration: BoxDecoration(
                          color: Color(0XFFFF6363).withOpacity(0.15)),
                      alignment: Alignment.topLeft,
                      child: CustomImageView(svgPath: ImageConstant.imgTicket)),
                  CustomIconButton(
                      height: 49.v,
                      width: 50.h,
                      margin: EdgeInsets.only(left: 26.h, top: 310.v),
                      padding: EdgeInsets.all(13.h),
                      decoration: BoxDecoration(
                          color: Color(0XFF456EFE).withOpacity(0.15)),
                      alignment: Alignment.topLeft,
                      child: CustomImageView(svgPath: ImageConstant.imgTicket)),
                  CustomIconButton(
                      height: 49.v,
                      width: 50.h,
                      margin: EdgeInsets.only(left: 26.h, top: 410.v),
                      padding: EdgeInsets.all(13.h),
                      decoration: BoxDecoration(
                          color: Color(0XFFF8C74E).withOpacity(0.15)),
                      alignment: Alignment.topLeft,
                      child: CustomImageView(svgPath: ImageConstant.imgTicket)),
                  CustomIconButton(
                      height: 49.v,
                      width: 50.h,
                      margin: EdgeInsets.only(left: 26.h, top: 510.v),
                      padding: EdgeInsets.all(13.h),
                      decoration: BoxDecoration(
                          color: Color(0XFF13C999).withOpacity(0.15)),
                      alignment: Alignment.topLeft,
                      child: CustomImageView(svgPath: ImageConstant.imgTicket))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the normalFdPaymentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the normalFdPaymentScreen.
  onTapApplyButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.normalFdPaymentScreen);
  }

  onTaptaxButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.taxSavingFdPaymentScreen);
  }

  onTapcumButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cumulativeFdPaymentScreen);
  }

  onTapncumButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nonCumulativeFdPaymentScreen);
  }

  onTapseniorButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seniorCitizenFdPaymentScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
