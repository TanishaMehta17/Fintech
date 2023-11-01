import '../profile_screen/widgets/transactionhist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_circleimage.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

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
                    margin: EdgeInsets.only(left: 30.h, top: 1.v, bottom: 7.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Profile"),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgImage357,
                      margin: EdgeInsets.fromLTRB(18.h, 4.v, 18.h, 1.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Column(children: [
                  SizedBox(height: 33.v),
                  SizedBox(
                      height: 89.v,
                      width: 91.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage128,
                            height: 89.adaptSize,
                            width: 89.adaptSize,
                            radius: BorderRadius.circular(44.h),
                            alignment: Alignment.center),
                        CustomImageView(
                            svgPath: ImageConstant.imgEdit,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(bottom: 5.v))
                      ])),
                  SizedBox(height: 11.v),
                  Text(" Harpreet Singh",
                      style: CustomTextStyles.titleLargePrimary),
                  SizedBox(height: 1.v),
                  Text("INDIA", style: CustomTextStyles.titleSmallPink20014),
                  SizedBox(height: 29.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 22.v),
                      decoration: AppDecoration.outlineBluegray500114.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 5.v, bottom: 1.v),
                                child: Text("Total Balance",
                                    style: CustomTextStyles
                                        .titleMediumBluegray900_3)),
                            Padding(
                                padding: EdgeInsets.only(right: 2.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "5500.00",
                                          style: CustomTextStyles
                                              .headlineSmallBluegray900),
                                      TextSpan(
                                          text: "INR",
                                          style: CustomTextStyles.labelSmall_2)
                                    ]),
                                    textAlign: TextAlign.left))
                          ])),
                  SizedBox(height: 13.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(right: 5.h, bottom: 1.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 17.v),
                            decoration: AppDecoration.outlineBluegray500115
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  CustomIconButton(
                                      height: 34.adaptSize,
                                      width: 34.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      decoration:
                                          IconButtonStyleHelper.outlineBlueGray,
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgBookmarkTealA70001)),
                                  SizedBox(height: 11.v),
                                  Text("Active Balance",
                                      style: CustomTextStyles
                                          .labelLargeSecondaryContainer),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 3.v, right: 2.h),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "50.00",
                                                    style: CustomTextStyles
                                                        .titleMediumBluegray900_2),
                                                TextSpan(
                                                    text: "INR",
                                                    style: CustomTextStyles
                                                        .labelSmall_1)
                                              ]),
                                              textAlign: TextAlign.left)))
                                ]))),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(
                                left: 5.h, right: 5.h, bottom: 1.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 11.h, vertical: 17.v),
                            decoration: AppDecoration.outlineBluegray500111
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  SizedBox(
                                      height: 34.adaptSize,
                                      width: 34.adaptSize,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFolder,
                                                height: 34.adaptSize,
                                                width: 34.adaptSize,
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgVolumePrimary,
                                                height: 16.v,
                                                width: 14.h,
                                                alignment: Alignment.center)
                                          ])),
                                  SizedBox(height: 11.v),
                                  Text("Total Loan",
                                      style: CustomTextStyles
                                          .labelLargeSecondaryContainer),
                                  SizedBox(height: 3.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "150.00",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900_2),
                                            TextSpan(
                                                text: "INR",
                                                style: CustomTextStyles
                                                    .labelSmall_1)
                                          ]),
                                          textAlign: TextAlign.left))
                                ]))),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 5.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 21.h, vertical: 16.v),
                            decoration: AppDecoration.outlineBluegray500111
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  CustomIconButton(
                                      height: 34.adaptSize,
                                      width: 34.adaptSize,
                                      padding: EdgeInsets.all(7.h),
                                      decoration: IconButtonStyleHelper
                                          .outlineBlueGrayTL5,
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgCalendar)),
                                  SizedBox(height: 11.v),
                                  Text("Save It",
                                      style: CustomTextStyles
                                          .labelLargeSecondaryContainer),
                                  SizedBox(height: 1.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "5.00",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900_1),
                                            TextSpan(
                                                text: "INR",
                                                style:
                                                    theme.textTheme.labelSmall)
                                          ]),
                                          textAlign: TextAlign.left))
                                ])))
                  ]),
                  SizedBox(height: 37.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Recent Transactions",
                          style: CustomTextStyles.titleMediumBluegray90019_1)),
                  SizedBox(height: 17.v),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 29.h, top: 16.v, right: 29.h),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 22.h,
                                vertical: 14.v,
                              ),
                              decoration:
                                  AppDecoration.outlineBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgDropbox1,
                                      height: 51.adaptSize,
                                      width: 51.adaptSize,
                                      margin: EdgeInsets.only(top: 2.v),
                                    ),
                                    onTap: () {
                                      //onTapdropbox(context);
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.h,
                                      top: 11.v,
                                      bottom: 7.v,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dropbox",
                                          style: CustomTextStyles
                                              .titleSmallBluegray900,
                                        ),
                                        SizedBox(height: 3.v),
                                        Text(
                                          "3 Days Ago",
                                          style: CustomTextStyles
                                              .labelLargeGray50001,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 14.v,
                                      bottom: 13.v,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "10.00",
                                            style: CustomTextStyles
                                                .titleLargeBluegray900,
                                          ),
                                          TextSpan(
                                            text: "INR",
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 22.h,
                                vertical: 14.v,
                              ),
                              decoration:
                                  AppDecoration.outlineBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgApple1,
                                      height: 51.adaptSize,
                                      width: 51.adaptSize,
                                      margin: EdgeInsets.only(top: 2.v),
                                    ),
                                    onTap: () {
                                      // onTapapplepay(context);
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.h,
                                      top: 11.v,
                                      bottom: 7.v,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Apple Pay",
                                          style: CustomTextStyles
                                              .titleSmallBluegray900,
                                        ),
                                        SizedBox(height: 3.v),
                                        Text(
                                          "One Week Ago",
                                          style: CustomTextStyles
                                              .labelLargeGray50001,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 14.v,
                                      bottom: 13.v,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "8.50",
                                            style: CustomTextStyles
                                                .titleLargeBluegray900,
                                          ),
                                          TextSpan(
                                            text: "INR",
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 22.h,
                                vertical: 14.v,
                              ),
                              decoration:
                                  AppDecoration.outlineBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgLinkedin1,
                                      height: 51.adaptSize,
                                      width: 51.adaptSize,
                                      margin: EdgeInsets.only(top: 2.v),
                                    ),
                                    onTap: () {
                                      //onTaplinkedln(context);
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16.h,
                                      top: 11.v,
                                      bottom: 7.v,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Linkedln",
                                          style: CustomTextStyles
                                              .titleSmallBluegray900,
                                        ),
                                        SizedBox(height: 3.v),
                                        Text(
                                          "One Month Ago",
                                          style: CustomTextStyles
                                              .labelLargeGray50001,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 14.v,
                                      bottom: 13.v,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "5.00",
                                            style: CustomTextStyles
                                                .titleLargeBluegray900,
                                          ),
                                          TextSpan(
                                            text: "INR",
                                            style: theme.textTheme.bodySmall,
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
                    // child: ListView.separated(
                    //     physics: NeverScrollableScrollPhysics(),
                    //     shrinkWrap: true,
                    //     separatorBuilder: (context, index) {
                    //       return SizedBox(height: 13.v);
                    //     },
                    //     itemCount: 3,
                    //     itemBuilder: (context, index) {
                    //       return TransactionhistItemWidget();
                    //     })
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
}
