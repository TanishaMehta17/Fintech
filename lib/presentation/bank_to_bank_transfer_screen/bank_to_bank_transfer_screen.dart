import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_radio_button.dart';
import 'package:tanisha_s_application14/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class BankToBankTransferScreen extends StatelessWidget {
  BankToBankTransferScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  String radioGroup3 = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "Bank Transfer", margin: EdgeInsets.only(left: 65.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 36.v),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 18.v),
                        Text("Transfer to Bank",
                            style: CustomTextStyles.titleLargeBluegray900_1),
                        SizedBox(height: 11.v),
                        Text("Search or select recipients bank",
                            style: CustomTextStyles.titleMediumGray5000116_1),
                        SizedBox(height: 9.v),
                        CustomSearchView(
                            controller: searchController,
                            hintText: "Search ",
                            prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(21.h, 14.v, 19.h, 14.v),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgSearch)),
                            prefixConstraints: BoxConstraints(maxHeight: 48.v),
                            suffix: Padding(
                                padding: EdgeInsets.only(right: 15.h),
                                child: IconButton(
                                    onPressed: () {
                                      searchController.clear();
                                    },
                                    icon: Icon(Icons.clear,
                                        color: Colors.grey.shade600)))),
                        SizedBox(height: 59.v),
                        InkWell(
                          child: Container(
                              width: 369.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 21.h, vertical: 15.v),
                              decoration: AppDecoration.outlineBluegray500111
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              // child: CustomRadioButton(
                              //      text: "SBI Bank",
                              //     value: "SBI Bank",
                              //     groupValue: radioGroup,
                              //     margin: EdgeInsets.only(right: 6.h),
                              //     padding:
                              //         EdgeInsets.fromLTRB(15.h, 15.v, 30.h, 15.v),
                              //     textStyle:
                              //         CustomTextStyles.bodyLargeBluegray90016_2,
                              //     onChange: (value) {
                              //       radioGroup = value;
                              //     })
                              child: CustomRadioButton(
                                  width: 320.h,
                                  text: "SBI Bank",
                                  value: "SBI Bank",
                                  logoImagePath:
                                      ImageConstant.imgRectangle145551x51,
                                  groupValue: radioGroup1,
                                  margin: EdgeInsets.only(right: 6.h),
                                  padding: EdgeInsets.fromLTRB(
                                      15.h, 15.v, 30.h, 15.v),
                                  textStyle:
                                      CustomTextStyles.bodyLargeBluegray90016_2,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    radioGroup1 = value;
                                  })),
                          onTap: () {
                            onTapsbi(context);
                          },
                        ),
                        SizedBox(height: 16.v),
                        InkWell(
                          child: Container(
                              width: 369.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 21.h, vertical: 14.v),
                              decoration: AppDecoration.outlineBluegray500111
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: CustomRadioButton(
                                  width: 320.h,
                                  text: "ICICI Bank",
                                  value: "ICICI Bank",
                                  logoImagePath: ImageConstant.imgRectangle1457,
                                  groupValue: radioGroup1,
                                  margin: EdgeInsets.only(right: 6.h),
                                  padding: EdgeInsets.fromLTRB(
                                      15.h, 15.v, 30.h, 15.v),
                                  textStyle:
                                      CustomTextStyles.bodyLargeBluegray90016_2,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    radioGroup1 = value;
                                  })),
                          onTap: () {
                            onTapicic(context);
                          },
                        ),
                        SizedBox(height: 16.v),
                        GestureDetector(
                          onTap: () {
                            onTapColumnindainban(context);
                          },
                          child: InkWell(
                            child: Container(
                                width: 369.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 21.h, vertical: 14.v),
                                decoration: AppDecoration.outlineBluegray500111
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: CustomRadioButton(
                                    logoImagePath:
                                        ImageConstant.imgRectangle1455,
                                    width: 320.h,
                                    text: "Indain Bank",
                                    value: "Indain Bank",
                                    groupValue: radioGroup2,
                                    margin: EdgeInsets.only(right: 6.h),
                                    padding: EdgeInsets.fromLTRB(
                                        15.h, 15.v, 30.h, 15.v),
                                    textStyle: CustomTextStyles
                                        .bodyLargeBluegray90016_2,
                                    isRightCheck: true,
                                    onChange: (value) {
                                      radioGroup2 = value;
                                    })),
                            onTap: () {
                              onTapContinue(context);
                            },
                          ),
                        ),
                        SizedBox(height: 16.v),
                        InkWell(
                          child: Container(
                            width: 369.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 21.h, vertical: 13.v),
                            decoration: AppDecoration.outlineBluegray500111
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                            // child: CustomRadioButton(
                            //     logoImagePath: ImageConstant.imgRectangle1461,
                            //     width: 320.h,
                            //     text: "Truist Financial",
                            //     value: "Truist Financial",
                            //     groupValue: radioGroup3,
                            //     margin: EdgeInsets.only(top: 2.v, right: 6.h),
                            //     padding:
                            //         EdgeInsets.fromLTRB(15.h, 15.v, 30.h, 15.v),
                            //     isRightCheck: true,
                            //     onChange: (value) {
                            //       radioGroup3 = value;
                            //     })
                            child: CustomRadioButton(
                              logoImagePath: ImageConstant.imgRectangle1461,
                              width: 320.h,
                              text: "Truist Financial",
                              value: "Truist Financial",
                              groupValue: radioGroup3,
                              margin: EdgeInsets.only(right: 6.h),
                              padding:
                                  EdgeInsets.fromLTRB(15.h, 15.v, 30.h, 15.v),
                              textStyle:
                                  CustomTextStyles.bodyLargeBluegray90016_2,
                              isRightCheck: true,
                              onChange: (value) {
                                radioGroup2 = value;
                              },
                            ),
                          ),
                          onTap: () {},
                        ),
                        CustomElevatedButton(
                            text: "Continue",
                            margin: EdgeInsets.only(
                                left: 26.h, top: 59.v, right: 26.h),
                            onTap: () {
                              onTapContinue(context);
                            },
                            alignment: Alignment.center)
                      ]),
                )),
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

  /// Navigates to the bankToBankTransferAmountIndianScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bankToBankTransferAmountIndianScreen.
  onTapColumnindainban(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.bankToBankTransferAmountIndianScreen);
  }

  /// Navigates to the bankToBankTransferAmountIndianScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bankToBankTransferAmountIndianScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.bankToBankTransferAmountIndianScreen);
  }

  onTapsbi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bankToBankTransferAmountsbiScreen);
  }

  onTapicic(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bankToBankTransferAmountIcicScreen);
  }
}
