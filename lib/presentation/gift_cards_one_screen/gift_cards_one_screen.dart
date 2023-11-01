import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

import '../gift_cards_one_screen/widgets/gift_cards_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class GiftCardsOneScreen extends StatelessWidget {
  GiftCardsOneScreen({Key? key}) : super(key: key);

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
                title: AppbarSubtitle2(text: "Gift"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Padding(
              padding: EdgeInsets.only(left: 29.h, top: 26.v, right: 29.h),
              // child:
              // ListView.separated(
              //     physics: BouncingScrollPhysics(),
              //     shrinkWrap: true,
              //     separatorBuilder: (context, index) {
              //       return SizedBox(height: 31.v);
              //     },
              //     itemCount: 3,
              //     itemBuilder: (context, index) {
              //       return GiftCardsOneItemWidget();
              //     })
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 351.v,
                      width: 368.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 351.v,
                              width: 368.h,
                              decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.gray50001.withOpacity(0.2),
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(
                                      1,
                                      5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle14671,
                                  height: 221.v,
                                  width: 368.h,
                                  radius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "Eid Gift",
                                  style:
                                      CustomTextStyles.titleLargeBluegray900_1,
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "Send Eidi gift to your loved ones",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 31.h,
                                    top: 9.v,
                                    right: 31.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 6.v,
                                          bottom: 5.v,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Get",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "10%",
                                                style: CustomTextStyles
                                                    .titleLargePrimary_1,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "Cashback",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      CustomElevatedButton(
                                        height: 32.v,
                                        width: 82.h,
                                        text: "Send",
                                        onTap: () {
                                          onTapeid(context);
                                        },
                                        buttonStyle:
                                            CustomButtonStyles.fillPrimaryTL7,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumWhiteA70016,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    SizedBox(
                      height: 351.v,
                      width: 368.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 351.v,
                              width: 368.h,
                              decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.gray50001.withOpacity(0.2),
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(
                                      1,
                                      5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle1468,
                                  height: 221.v,
                                  width: 368.h,
                                  radius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "Birthday Gift",
                                  style:
                                      CustomTextStyles.titleLargeBluegray900_1,
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "Send Birthday gift to your loved ones",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 31.h,
                                    top: 9.v,
                                    right: 31.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 6.v,
                                          bottom: 5.v,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Get",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "20%",
                                                style: CustomTextStyles
                                                    .titleLargePrimary_1,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "Cashback",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      CustomElevatedButton(
                                        height: 32.v,
                                        width: 82.h,
                                        text: "Send",
                                        onTap: () {
                                          onTapBday(context);
                                        },
                                        buttonStyle:
                                            CustomButtonStyles.fillPrimaryTL7,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumWhiteA70016,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    SizedBox(
                      height: 351.v,
                      width: 368.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 351.v,
                              width: 368.h,
                              decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.gray50001.withOpacity(0.2),
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(
                                      1,
                                      5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle1469,
                                  height: 221.v,
                                  width: 368.h,
                                  radius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "Mariage Gift",
                                  style:
                                      CustomTextStyles.titleLargeBluegray900_1,
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "Send Marriage gift to your loved ones",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 31.h,
                                    top: 9.v,
                                    right: 31.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 6.v,
                                          bottom: 5.v,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Get",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "10%",
                                                style: CustomTextStyles
                                                    .titleLargePrimary_1,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "Cashback",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      CustomElevatedButton(
                                        height: 32.v,
                                        width: 82.h,
                                        text: "Send",
                                        onTap: () {
                                          onTapmar(context);
                                        },
                                        buttonStyle:
                                            CustomButtonStyles.fillPrimaryTL7,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumWhiteA70016,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
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

  onTapmar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.giftCardsScreen);
  }

  onTapeid(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.eidGiftCardsScreen);
  }

  onTapBday(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.birthdayGiftCardsDetailsScreen);
  }
}
