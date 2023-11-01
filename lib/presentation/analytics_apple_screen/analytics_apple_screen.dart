import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

class AnalyticsAppleScreen extends StatelessWidget {
  AnalyticsAppleScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController group6582Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 634.v),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 421.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 29.h,
                              top: 29.v,
                              right: 29.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Recent Transactions",
                                  style: CustomTextStyles
                                      .titleMediumBluegray90019_1,
                                ),
                                SizedBox(height: 17.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 22.h,
                                    vertical: 15.v,
                                  ),
                                  decoration: AppDecoration.outlineBluegray50011
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgDropbox1,
                                        height: 51.adaptSize,
                                        width: 51.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 16.h,
                                          top: 7.v,
                                          bottom: 7.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dropbox",
                                              style: CustomTextStyles
                                                  .titleSmallGray700,
                                            ),
                                            SizedBox(height: 4.v),
                                            Text(
                                              "3 Days Ago",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray200,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 12.v,
                                          bottom: 13.v,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "",
                                                style: CustomTextStyles
                                                    .titleLargeGray700_1,
                                              ),
                                              TextSpan(
                                                text: "10.00",
                                                style: CustomTextStyles
                                                    .titleLargeGray700_1,
                                              ),
                                              TextSpan(
                                                text: "USD",
                                                style: CustomTextStyles
                                                    .labelSmallGray700,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 13.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 22.h,
                                    vertical: 15.v,
                                  ),
                                  decoration: AppDecoration.outlineBluegray50011
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgApple1,
                                        height: 51.adaptSize,
                                        width: 51.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 14.h,
                                          top: 8.v,
                                          bottom: 8.v,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Apple Pay",
                                              style: CustomTextStyles
                                                  .titleSmallGray700,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "1 Week Ago",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray200,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 12.v,
                                          right: 3.h,
                                          bottom: 13.v,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "8",
                                                style: CustomTextStyles
                                                    .titleLargeGray700_1,
                                              ),
                                              TextSpan(
                                                text: ".50",
                                                style: CustomTextStyles
                                                    .titleLargeGray700_1,
                                              ),
                                              TextSpan(
                                                text: "USD",
                                                style: CustomTextStyles
                                                    .labelSmallGray700,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 13.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 22.h,
                                    vertical: 15.v,
                                  ),
                                  decoration: AppDecoration.outlineBluegray50011
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgLinkedin1,
                                        height: 51.adaptSize,
                                        width: 51.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 14.h,
                                          top: 7.v,
                                          bottom: 7.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "LinkedIn",
                                              style: CustomTextStyles
                                                  .titleSmallGray700,
                                            ),
                                            SizedBox(height: 5.v),
                                            Text(
                                              "1 Month Ago",
                                              style: CustomTextStyles
                                                  .labelLargeBluegray200,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 12.v,
                                          right: 2.h,
                                          bottom: 13.v,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "",
                                                style: CustomTextStyles
                                                    .titleLargeGray700_1,
                                              ),
                                              TextSpan(
                                                text: "5.00",
                                                style: CustomTextStyles
                                                    .titleLargeGray700_1,
                                              ),
                                              TextSpan(
                                                text: "USD",
                                                style: CustomTextStyles
                                                    .labelSmallGray700,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 421.v,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 30.h,
                                      vertical: 44.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillWhiteA700.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL20,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 38.v),
                                        Text(
                                          "Apple Pay",
                                          style: CustomTextStyles
                                              .headlineMediumErrorContainer,
                                        ),
                                        SizedBox(height: 5.v),
                                        Text(
                                          "POS Signature Purchase",
                                          style: CustomTextStyles
                                              .titleMediumPink20016,
                                        ),
                                        SizedBox(height: 14.v),
                                        CustomTextFormField(
                                          width: 249.h,
                                          controller: group6582Controller,
                                          hintText:
                                              "Transactions Status: Posted",
                                          hintStyle: CustomTextStyles
                                              .titleMediumTealA70002,
                                          textInputAction: TextInputAction.done,
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 14.h,
                                            vertical: 9.v,
                                          ),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlueGray,
                                          fillColor: appTheme.tealA70002,
                                        ),
                                        SizedBox(height: 16.v),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "8.50",
                                                style: theme
                                                    .textTheme.displaySmall,
                                              ),
                                              TextSpan(
                                                text: "INR",
                                                style: CustomTextStyles
                                                    .titleLargePink200,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(height: 16.v),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Transaction ID",
                                              style: CustomTextStyles
                                                  .titleMediumPink200_1,
                                            ),
                                            Text(
                                              "14225055650",
                                              style: CustomTextStyles
                                                  .titleMediumBluegray900_4,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 18.v),
                                        Divider(
                                          color: appTheme.blueGray50,
                                        ),
                                        SizedBox(height: 16.v),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 1.v),
                                              child: Text(
                                                "Posted Date",
                                                style: CustomTextStyles
                                                    .titleMediumPink200_1,
                                              ),
                                            ),
                                            Text(
                                              "Jul 04, 2021",
                                              style: CustomTextStyles
                                                  .titleMediumBluegray900_4,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgApple1,
                                  height: 75.adaptSize,
                                  width: 75.adaptSize,
                                  alignment: Alignment.topCenter,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
