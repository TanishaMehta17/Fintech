import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';

import '../main_loan_graph_screen/widgets/userhomeloan_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class MainLoanGraphScreen extends StatelessWidget {
  MainLoanGraphScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Loan"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 38.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 29.h, right: 29.h, bottom: 5.v),
                              child: Column(children: [
                                Text("Car Loan",
                                    style:
                                        CustomTextStyles.titleSmallGray50001_1),
                                SizedBox(height: 8.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "6000",
                                                style: CustomTextStyles
                                                    .displaySmallRegular),
                                            TextSpan(
                                                text: ".76",
                                                style: CustomTextStyles
                                                    .titleLargeBluegray900Regular)
                                          ]),
                                          textAlign: TextAlign.left),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage129,
                                          height: 27.adaptSize,
                                          width: 27.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 32.h,
                                              top: 11.v,
                                              bottom: 14.v))
                                    ]),
                                SizedBox(height: 42.v),
                                SizedBox(
                                  height: 130.adaptSize,
                                  width: 130.adaptSize,
                                  //child: CircularProgressIndicator(value: 1)
                                  //add image in this loc and also change the icons of the 3 column
                                ),
                                SizedBox(height: 43.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 4.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25.h,
                                                  vertical: 12.v),
                                              decoration: AppDecoration
                                                  .fillIndigoA20001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("Total",
                                                        style: CustomTextStyles
                                                            .titleMediumBluegray90016_1),
                                                    SizedBox(height: 1.v),
                                                    Text("6000.00",
                                                        style: CustomTextStyles
                                                            .bodyLargePrimary)
                                                  ]))),
                                      Expanded(
                                          child: Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 4.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 22.h,
                                                  vertical: 12.v),
                                              decoration: AppDecoration
                                                  .fillTealA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("Paid",
                                                        style: CustomTextStyles
                                                            .titleMediumBluegray90016_1),
                                                    SizedBox(height: 1.v),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Text(" 2000.00",
                                                            style: CustomTextStyles
                                                                .bodyLargeTealA70001))
                                                  ]))),
                                      Expanded(
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(left: 4.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 22.h,
                                                  vertical: 12.v),
                                              decoration: AppDecoration
                                                  .fillOnError
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("Due",
                                                        style: CustomTextStyles
                                                            .bodyLargeBluegray90016),
                                                    SizedBox(height: 1.v),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Text(" 2000.00",
                                                            style: CustomTextStyles
                                                                .bodyLargeOnError))
                                                  ])))
                                    ]),
                                SizedBox(height: 43.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Recomended Loan",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90019)),
                                SizedBox(height: 23.v),
                                // ListView.separated(
                                //     physics: NeverScrollableScrollPhysics(),
                                //     shrinkWrap: true,
                                //     separatorBuilder: (context, index) {
                                //       return SizedBox(height: 24.v);
                                //     },
                                //     itemCount: 4,
                                //     itemBuilder: (context, index) {
                                //       return UserhomeloanItemWidget(
                                //           onTapApplyButton: () {
                                //         onTapApplyButton(context);
                                //       });
                                //     })
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 18.h,
                                        vertical: 19.v,
                                      ),
                                      decoration: AppDecoration.outlineBlueGray
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomIconButton(
                                            height: 49.v,
                                            width: 50.h,
                                            margin: EdgeInsets.only(top: 2.v),
                                            padding: EdgeInsets.all(14.h),
                                            decoration:
                                                IconButtonStyleHelper.fillTealA,
                                            child: CustomImageView(
                                              svgPath: ImageConstant.imgHome,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 16.h,
                                              top: 2.v,
                                              bottom: 5.v,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 7.h),
                                                  child: Text(
                                                    "Home Loan",
                                                    style: CustomTextStyles
                                                        .titleLargeBluegray900_1,
                                                  ),
                                                ),
                                                SizedBox(height: 3.v),
                                                RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "Amount:",
                                                        style: CustomTextStyles
                                                            .bodyMedium14,
                                                      ),
                                                      TextSpan(
                                                        text: " ",
                                                      ),
                                                      TextSpan(
                                                        text: "12000.00",
                                                        style: CustomTextStyles
                                                            .bodyMediumPrimary,
                                                      ),
                                                      TextSpan(
                                                        text: "INR",
                                                        style: CustomTextStyles
                                                            .arialBluegray900,
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          CustomElevatedButton(
                                            height: 32.v,
                                            width: 82.h,
                                            text: "Apply",
                                            margin: EdgeInsets.symmetric(
                                                vertical: 9.v),
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL7,
                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumWhiteA70016,
                                            onTap: () {
                                              onTapApplyButton(context);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 18.h,
                                          vertical: 19.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomIconButton(
                                              height: 49.v,
                                              width: 50.h,
                                              margin: EdgeInsets.only(top: 2.v),
                                              padding: EdgeInsets.all(14.h),
                                              // decoration: IconButtonStyleHelper
                                              //     .fillTealA,
                                              decoration: BoxDecoration(
                                                  color: Color(0XFFFF6363)
                                                      .withOpacity(0.15)),

                                              child: CustomImageView(
                                                svgPath: ImageConstant.imgHome,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 5.v,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 7.h),
                                                    child: Text(
                                                      "Gold Loan",
                                                      style: CustomTextStyles
                                                          .titleLargeBluegray900_1,
                                                    ),
                                                  ),
                                                  SizedBox(height: 3.v),
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: "Amount:",
                                                          style:
                                                              CustomTextStyles
                                                                  .bodyMedium14,
                                                        ),
                                                        TextSpan(
                                                          text: " ",
                                                        ),
                                                        TextSpan(
                                                          text: "15000.00",
                                                          style: CustomTextStyles
                                                              .bodyMediumPrimary,
                                                        ),
                                                        TextSpan(
                                                          text: "INR",
                                                          style: CustomTextStyles
                                                              .arialBluegray900,
                                                        ),
                                                      ],
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            CustomElevatedButton(
                                              height: 32.v,
                                              width: 82.h,
                                              text: "Apply",
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 9.v),
                                              buttonStyle: CustomButtonStyles
                                                  .fillPrimaryTL7,
                                              buttonTextStyle: CustomTextStyles
                                                  .titleMediumWhiteA70016,
                                              onTap: () {
                                                //onTapApplyButton?.call();
                                                onTapgold(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 18.h,
                                          vertical: 19.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomIconButton(
                                              height: 49.v,
                                              width: 50.h,
                                              margin: EdgeInsets.only(top: 2.v),
                                              padding: EdgeInsets.all(14.h),
                                              // decoration: IconButtonStyleHelper
                                              //     .fillTealA,
                                              decoration: BoxDecoration(
                                                  color: Color(0XFF456EFE)
                                                      .withOpacity(0.15)),

                                              child: CustomImageView(
                                                svgPath: ImageConstant.imgHome,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 5.v,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 7.h),
                                                    child: Text(
                                                      "Education Loan",
                                                      style: CustomTextStyles
                                                          .titleLargeBluegray900_1,
                                                    ),
                                                  ),
                                                  SizedBox(height: 3.v),
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: "Amount:",
                                                          style:
                                                              CustomTextStyles
                                                                  .bodyMedium14,
                                                        ),
                                                        TextSpan(
                                                          text: " ",
                                                        ),
                                                        TextSpan(
                                                          text: "8000.00",
                                                          style: CustomTextStyles
                                                              .bodyMediumPrimary,
                                                        ),
                                                        TextSpan(
                                                          text: "INR",
                                                          style: CustomTextStyles
                                                              .arialBluegray900,
                                                        ),
                                                      ],
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            CustomElevatedButton(
                                              height: 32.v,
                                              width: 82.h,
                                              text: "Apply",
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 9.v),
                                              buttonStyle: CustomButtonStyles
                                                  .fillPrimaryTL7,
                                              buttonTextStyle: CustomTextStyles
                                                  .titleMediumWhiteA70016,
                                              onTap: () {
                                                //onTapApplyButton?.call();
                                                onTapedu(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 18.h,
                                          vertical: 19.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomIconButton(
                                              height: 49.v,
                                              width: 50.h,
                                              margin: EdgeInsets.only(top: 2.v),
                                              padding: EdgeInsets.all(14.h),
                                              decoration: BoxDecoration(
                                                  color: Color(0XFFF8C74E)
                                                      .withOpacity(0.15)),
                                              child: CustomImageView(
                                                svgPath: ImageConstant.imgHome,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 5.v,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 7.h),
                                                    child: Text(
                                                      "Car Loan",
                                                      style: CustomTextStyles
                                                          .titleLargeBluegray900_1,
                                                    ),
                                                  ),
                                                  SizedBox(height: 3.v),
                                                  RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: "Amount:",
                                                          style:
                                                              CustomTextStyles
                                                                  .bodyMedium14,
                                                        ),
                                                        TextSpan(
                                                          text: " ",
                                                        ),
                                                        TextSpan(
                                                          text: "8000.00",
                                                          style: CustomTextStyles
                                                              .bodyMediumPrimary,
                                                        ),
                                                        TextSpan(
                                                          text: "INR",
                                                          style: CustomTextStyles
                                                              .arialBluegray900,
                                                        ),
                                                      ],
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            CustomElevatedButton(
                                              height: 32.v,
                                              width: 82.h,
                                              text: "Apply",
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 9.v),
                                              buttonStyle: CustomButtonStyles
                                                  .fillPrimaryTL7,
                                              buttonTextStyle: CustomTextStyles
                                                  .titleMediumWhiteA70016,
                                              onTap: () {
                                                //onTapApplyButton?.call();
                                                onTapcar(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]))))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the loanDetailsTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loanDetailsTabContainerScreen.
  onTapApplyButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loanDetailsTabContainerScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapgold(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goldLoanDetailsScreen);
  }

  onTapedu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.educationLoanPaymentDetailsScreen);
  }

  onTapcar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carLoanScreen);
  }
}
