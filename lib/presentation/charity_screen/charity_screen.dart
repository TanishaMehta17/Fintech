import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

import '../charity_screen/widgets/listdaysleft_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class CharityScreen extends StatelessWidget {
  CharityScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 78.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Charity"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Padding(
              padding: EdgeInsets.only(left: 29.h, top: 31.v, right: 29.h),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                  // image: DecorationImage(
                  //   image: fs.Svg(
                  //     ImageConstant.imgGroup6784,
                  //   ),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 221.v,
                      width: 368.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle1467,
                            height: 221.v,
                            width: 368.h,
                            radius: BorderRadius.vertical(
                              top: Radius.circular(10.h),
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomElevatedButton(
                            height: 35.v,
                            width: 95.h,
                            text: "14 Days Left",
                            margin: EdgeInsets.only(
                              left: 21.h,
                              top: 21.v,
                            ),
                            buttonStyle: CustomButtonStyles.fillTealA,
                            buttonTextStyle:
                                CustomTextStyles.titleSmallWhiteA700_1,
                            alignment: Alignment.topLeft,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 21.h,
                        top: 13.v,
                        right: 21.h,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Column(
                                  children: [
                                    Text(
                                      "Donate for Child Education",
                                      style: CustomTextStyles
                                          .titleLargeBluegray900_1,
                                    ),
                                    SizedBox(height: 5.v),
                                    Text(
                                      "Arrange by HEADS Foundation",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                              CustomElevatedButton(
                                height: 26.v,
                                width: 44.h,
                                text: "40%",
                                margin: EdgeInsets.only(bottom: 23.v),
                                buttonStyle: CustomButtonStyles.fillPrimaryTL71,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumPrimary16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 21.h,
                        top: 16.v,
                        right: 21.h,
                      ),
                      child: Container(
                        height: 6.v,
                        width: 324.h,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray200.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.46,
                            backgroundColor:
                                appTheme.blueGray200.withOpacity(0.15),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(21.h, 16.v, 21.h, 12.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 4.v,
                              bottom: 5.v,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "10245.00",
                                    style: CustomTextStyles.titleLargeGray50001,
                                  ),
                                  TextSpan(
                                    text: "INR",
                                    style:
                                        CustomTextStyles.bodySmallGray50001_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          CustomElevatedButton(
                            height: 32.v,
                            width: 82.h,
                            text: "Donate",
                            buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumWhiteA70016,
                            onTap: () {
                              onTapedu(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                        // image: DecorationImage(
                        //   // image: fs.Svg(
                        //   //   ImageConstant.imgGroup6784,
                        //   // ),
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 221.v,
                            width: 368.h,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle1467221x368,
                                  height: 221.v,
                                  width: 368.h,
                                  radius: BorderRadius.vertical(
                                    top: Radius.circular(10.h),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomElevatedButton(
                                  height: 35.v,
                                  width: 95.h,
                                  text: "2 Days Left",
                                  margin: EdgeInsets.only(
                                    left: 21.h,
                                    top: 21.v,
                                  ),
                                  buttonStyle: CustomButtonStyles.fillTealA,
                                  buttonTextStyle:
                                      CustomTextStyles.titleSmallWhiteA700_1,
                                  alignment: Alignment.topLeft,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 21.h,
                              top: 13.v,
                              right: 21.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Donate for Cancer Patients",
                                        style: CustomTextStyles
                                            .titleLargeBluegray900_1,
                                      ),
                                      SizedBox(height: 5.v),
                                      Text(
                                        "Arrange by Care Club",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: 26.v,
                                  width: 44.h,
                                  text: "80%",
                                  margin: EdgeInsets.only(bottom: 23.v),
                                  buttonStyle: CustomButtonStyles.fillTealA,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumPrimary16,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 21.h,
                              top: 16.v,
                              right: 21.h,
                            ),
                            child: Container(
                              height: 6.v,
                              width: 324.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray200.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                                child: LinearProgressIndicator(
                                  value: 0.76,
                                  backgroundColor:
                                      appTheme.blueGray200.withOpacity(0.15),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    theme.colorScheme.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(21.h, 16.v, 21.h, 12.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 4.v,
                                    bottom: 5.v,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "10245.00",
                                          style: CustomTextStyles
                                              .titleLargeGray50001,
                                        ),
                                        TextSpan(
                                          text: "USD",
                                          style: CustomTextStyles
                                              .bodySmallGray50001_1,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                CustomElevatedButton(
                                  height: 32.v,
                                  width: 82.h,
                                  text: "Donate",
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL7,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumWhiteA70016,
                                  onTap: () {
                                    onTapcan(context);
                                  },
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

  onTapcan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.careDonationDetailScreen);
  }

  onTapedu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.headsDonationDetailScreen);
  }
}
