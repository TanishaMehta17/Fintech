import '../analytics_screen/widgets/usertransaction_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AnalyticsScreen extends StatelessWidget {
  AnalyticsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 76.h,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgProfile,
                    margin: EdgeInsets.only(left: 29.h, top: 5.v, bottom: 5.v)),
                centerTitle: true,
                title: AppbarSubtitle1(text: "Fintech"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 21.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Align(
                        alignment: Alignment.center,
                        child: Text("Available Balance",
                            style: CustomTextStyles.titleSmallGray50001_1)),
                    SizedBox(height: 10.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "4,228",
                                    style:
                                        CustomTextStyles.displaySmallRegular),
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
                                  left: 23.h, top: 8.v, bottom: 17.v))
                        ]),
                    SizedBox(height: 7.v),
                    SizedBox(
                        height: 260.v,
                        width: 427.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: 427.h,
                                  margin: EdgeInsets.only(top: 5.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 50.h, vertical: 34.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup550),
                                          fit: BoxFit.cover)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                            height: 187.v,
                                            child: VerticalDivider(
                                                width: 1.h,
                                                thickness: 1.v,
                                                color: appTheme.blue100,
                                                indent: 70.h)),
                                        SizedBox(
                                            height: 187.v,
                                            child: VerticalDivider(
                                                width: 1.h,
                                                thickness: 1.v,
                                                color: appTheme.blue100,
                                                indent: 163.h)),
                                        SizedBox(
                                            height: 186.v,
                                            child: VerticalDivider(
                                                width: 1.h,
                                                thickness: 1.v,
                                                color: appTheme.blue100,
                                                indent: 29.h)),
                                        SizedBox(
                                            height: 186.v,
                                            child: VerticalDivider(
                                                width: 1.h,
                                                thickness: 1.v,
                                                color: appTheme.blue100,
                                                indent: 37.h)),
                                        SizedBox(
                                            height: 186.v,
                                            child: VerticalDivider(
                                                width: 1.h,
                                                thickness: 1.v,
                                                color: appTheme.blue100,
                                                indent: 29.h))
                                      ]))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  height: 38.v,
                                  width: 78.h,
                                  margin: EdgeInsets.only(left: 93.h),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgBookmark,
                                            height: 38.v,
                                            width: 78.h,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 18.h, top: 6.v),
                                                child: Text("3120",
                                                    style: CustomTextStyles
                                                        .bodyLargeWhiteA700)))
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgVectorPrimary,
                              height: 137.v,
                              width: 427.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 5.v)),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 131.h),
                                  child: SizedBox(
                                      height: 199.v,
                                      child: VerticalDivider(
                                          width: 2.h,
                                          thickness: 2.v,
                                          color: theme.colorScheme.primary,
                                          indent: 52.h)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  margin: EdgeInsets.only(left: 120.h),
                                  padding: EdgeInsets.all(5.h),
                                  decoration: AppDecoration.fillPrimary
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Container(
                                      height: 12.adaptSize,
                                      width: 12.adaptSize,
                                      decoration: BoxDecoration(
                                          color: appTheme.whiteA700,
                                          borderRadius:
                                              BorderRadius.circular(6.h)))))
                        ])),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 42.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Nov 10",
                                  style: CustomTextStyles
                                      .titleSmallSecondaryContainer),
                              Padding(
                                  padding: EdgeInsets.only(left: 33.h),
                                  child: Text("Nov 15",
                                      style:
                                          CustomTextStyles.titleSmallPrimary)),
                              Padding(
                                  padding: EdgeInsets.only(left: 33.h),
                                  child: Text("Nov 20",
                                      style: CustomTextStyles
                                          .titleSmallSecondaryContainer)),
                              Padding(
                                  padding: EdgeInsets.only(left: 33.h),
                                  child: Text("Nov 25",
                                      style: CustomTextStyles
                                          .titleSmallSecondaryContainer)),
                              Padding(
                                  padding: EdgeInsets.only(left: 23.h),
                                  child: Text("Nov 30",
                                      style: CustomTextStyles
                                          .titleSmallSecondaryContainer))
                            ])),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 29.h, top: 30.v),
                            child: Text("Last 30 Days",
                                style: CustomTextStyles
                                    .titleMediumBluegray90019_1))),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 29.h, top: 10.v, right: 29.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 178.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 21.v),
                                  decoration: AppDecoration.fillTealA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 4.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h),
                                                      child: Text("Money In",
                                                          style: CustomTextStyles
                                                              .titleSmallTealA700)),
                                                  SizedBox(height: 1.v),
                                                  RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "271.00",
                                                            style: CustomTextStyles
                                                                .titleLargeTealA700),
                                                        TextSpan(
                                                            text: "INR",
                                                            style: CustomTextStyles
                                                                .bodySmallTealA700)
                                                      ]),
                                                      textAlign: TextAlign.left)
                                                ])),
                                        Container(
                                            height: 30.adaptSize,
                                            width: 30.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 35.h,
                                                top: 7.v,
                                                bottom: 7.v),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgInfo,
                                                      height: 30.adaptSize,
                                                      width: 30.adaptSize,
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdown,
                                                      height: 14.v,
                                                      width: 13.h,
                                                      alignment:
                                                          Alignment.center)
                                                ]))
                                      ])),
                              Container(
                                  width: 178.h,
                                  margin: EdgeInsets.only(left: 12.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.h, vertical: 21.v),
                                  decoration: AppDecoration.fillPrimary1
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 4.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h),
                                                      child: Text("Money Out",
                                                          style: CustomTextStyles
                                                              .titleSmallPrimary14)),
                                                  SizedBox(height: 1.v),
                                                  RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "180.00",
                                                            style: CustomTextStyles
                                                                .titleLargePrimaryRegular),
                                                        TextSpan(
                                                            text: "INR",
                                                            style: CustomTextStyles
                                                                .bodySmallPrimary)
                                                      ]),
                                                      textAlign: TextAlign.left)
                                                ])),
                                        Container(
                                            height: 30.adaptSize,
                                            width: 30.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 30.h,
                                                top: 7.v,
                                                bottom: 7.v),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgInfoWhiteA700,
                                                      height: 30.adaptSize,
                                                      width: 30.adaptSize,
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowup,
                                                      height: 14.v,
                                                      width: 13.h,
                                                      alignment:
                                                          Alignment.center)
                                                ]))
                                      ]))
                            ])),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 29.h, top: 29.v),
                            child: Text("Recent Transactions",
                                style: CustomTextStyles
                                    .titleMediumBluegray90019_1))),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 29.h, top: 16.v, right: 29.h),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 22.h,
                              vertical: 14.v,
                            ),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
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


                                    showModalBottomSheet(context: context, builder: (BuildContext context){
                                      return SizedBox(
                                         width: double.maxFinite,
          child: Column(
            children: [
              
              _buildAnalyticsDropboxOne(context),
            ],
          ),
                                      );
                                    });
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
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 22.h,
                              vertical: 14.v,
                            ),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
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
                                    //onTapapplepay(context);

                                    showModalBottomSheet(context: context, builder: (BuildContext context){
                                      return SizedBox(
                                         width: double.maxFinite,
          child: Column(
            children: [
              
              //_buildAnalyticsLinkedin(context),
               _buildScrollView(context),
            ],
          ),




                                      );

                                    });

                                    
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
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 22.h,
                              vertical: 14.v,
                            ),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
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
                                  //  onTaplinkedln(context);
                                    showModalBottomSheet(context: context, builder: (BuildContext context){
                                      return SizedBox(
                                                                    width: double.maxFinite,
          child: Column(
            children: [
              
              _buildAnalyticsLinkedin(context),
            ],
          ),

                                      );
                                    });

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
                    )
                  ])))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the analyticsLinkedinScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the analyticsLinkedinScreen.

  onTapdropbox(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.analyticsBropdoxScreen);
  }

  onTaplinkedln(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.analyticsLinkedinScreen);
  }

  onTapapplepay(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.analyticsAppleScreen);
  }
}


 Widget _buildAnalyticsLinkedin(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLinkedin1,
                height: 75.adaptSize,
                width: 75.adaptSize,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 45.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "LinkedIn",
                      style: CustomTextStyles.headlineMediumErrorContainer,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "POS Signature Purchase",
                      style: CustomTextStyles.titleMediumPink20016,
                    ),
                    SizedBox(height: 14.v),
                  //   CustomTextFormField(
                  //     width: 249.h,
                  //  //   controller: group6582Controller,
                  //     hintText: "Transactions Status: Posted",
                  //     textInputAction: TextInputAction.done,
                  //   ),
                  Container(
                                            width: 249.h,
                                            height: 35.v,
                                            decoration: BoxDecoration(
                                                color: Color(0XFF1CCD9D)
                                                    .withOpacity(0.15),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8),
                                              child: Text(
                                                'Transactions Status: Sent',
                                                style: TextStyle(
                                                    color: Color(0XFF1CCD9D)),
                                                textAlign: TextAlign.center,
                                              ),
                                            )),
                    SizedBox(height: 16.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "5",
                            style: CustomTextStyles.displaySmall34,
                          ),
                          TextSpan(
                            text: ".00",
                            style: theme.textTheme.displaySmall,
                          ),
                          TextSpan(
                            text: "INR",
                            style: theme.textTheme.titleLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction ID",
                          style: CustomTextStyles.titleMediumPink200,
                        ),
                        Text(
                          "14225055650",
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 18.v),
                    Divider(),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Posted Date",
                            style: CustomTextStyles.titleMediumPink200,
                          ),
                        ),
                        Text(
                          "Jul 04, 2021",
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 36.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget _buildScrollView(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgApple1,
                height: 75.adaptSize,
                width: 75.adaptSize,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 38.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Apple Pay",
                      style: CustomTextStyles.headlineMediumErrorContainer,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "POS Signature Purchase",
                      style: CustomTextStyles.titleMediumPink20016,
                    ),
                    SizedBox(height: 14.v),
                    Container(
                                            width: 249.h,
                                            height: 35.v,
                                            decoration: BoxDecoration(
                                                color: Color(0XFF1CCD9D)
                                                    .withOpacity(0.15),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8),
                                              child: Text(
                                                'Transactions Status: Sent',
                                                style: TextStyle(
                                                    color: Color(0XFF1CCD9D)),
                                                textAlign: TextAlign.center,
                                              ),
                                            )),
                    SizedBox(height: 16.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "8.50",
                            style: theme.textTheme.displaySmall,
                          ),
                          TextSpan(
                            text: "INR",
                            style: theme.textTheme.titleLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction ID",
                          style: CustomTextStyles.titleMediumPink200,
                        ),
                        Text(
                          "14225055650",
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 18.v),
                    Divider(),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Posted Date",
                            style: CustomTextStyles.titleMediumPink200,
                          ),
                        ),
                        Text(
                          "Jul 04, 2021",
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 50.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 Widget _buildAnalyticsDropboxOne(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDropbox1,
                height: 75.adaptSize,
                width: 75.adaptSize,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 37.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 125.h),
                        child: Text(
                          "Dropbox",
                          style: CustomTextStyles.headlineMediumErrorContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "POS Signature Purchase",
                      style: CustomTextStyles.titleMediumPink20016,
                    ),
                    SizedBox(height: 14.v),
                  Container(
                                            width: 249.h,
                                            height: 35.v,
                                            decoration: BoxDecoration(
                                                color: Color(0XFF1CCD9D)
                                                    .withOpacity(0.15),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8),
                                              child: Text(
                                                'Transactions Status: Sent',
                                                style: TextStyle(
                                                    color: Color(0XFF1CCD9D)),
                                                textAlign: TextAlign.center,
                                              ),
                                            )),
                    SizedBox(height: 16.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "10",
                            style: CustomTextStyles.displaySmall34,
                          ),
                          TextSpan(
                            text: ".00",
                            style: theme.textTheme.displaySmall,
                          ),
                          TextSpan(
                            text: "INR",
                            style: theme.textTheme.titleLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction ID",
                          style: CustomTextStyles.titleMediumPink200,
                        ),
                        Text(
                          "14225055650",
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 18.v),
                    Divider(),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Posted Date",
                            style: CustomTextStyles.titleMediumPink200,
                          ),
                        ),
                        Text(
                          "Jul 04, 2021",
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 52.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

