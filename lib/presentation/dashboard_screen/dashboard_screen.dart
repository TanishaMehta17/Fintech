import '../dashboard_screen/widgets/userpayment_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_circleimage.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 84.h,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgProfile,
                    margin: EdgeInsets.only(left: 37.h, top: 3.v, bottom: 8.v),
                    onTap: () {
                      onTapProfileone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Fintech"),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgImage357,
                      margin:
                          EdgeInsets.symmetric(horizontal: 20.h, vertical: 3.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 39.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 959.v,
                              width: 417.h,
                              margin: EdgeInsets.only(
                                  left: 6.h, right: 4.h, bottom: 5.v),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.h, right: 17.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10.h),
                                                      child: Column(children: [
                                                        InkWell(
                                                          child: Container(
                                                              width: 369.h,
                                                              padding:
                                                                  EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          38.h,
                                                                      vertical:
                                                                          30.v),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10,
                                                                  image: DecorationImage(
                                                                      image: fs.Svg(
                                                                          ImageConstant
                                                                              .imgGroup6062),
                                                                      fit: BoxFit
                                                                          .cover)),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    SizedBox(
                                                                        height: 83
                                                                            .v,
                                                                        width: 189
                                                                            .h,
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.bottomCenter,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.topLeft,
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    Text("Available Balance", style: CustomTextStyles.titleSmallWhiteA700),
                                                                                    SizedBox(height: 3.v),
                                                                                    RichText(
                                                                                        text: TextSpan(children: [
                                                                                          TextSpan(text: "4,228", style: CustomTextStyles.headlineMediumWhiteA700Regular),
                                                                                          TextSpan(text: ".76", style: CustomTextStyles.titleLargeRegular)
                                                                                        ]),
                                                                                        textAlign: TextAlign.left)
                                                                                  ])),
                                                                              Align(
                                                                                  alignment: Alignment.bottomCenter,
                                                                                  child: Padding(
                                                                                      padding: EdgeInsets.only(left: 1.h, top: 61.v),
                                                                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                        CustomImageView(svgPath: ImageConstant.imgGroup5970, height: 5.v, width: 36.h, margin: EdgeInsets.only(top: 7.v, bottom: 8.v)),
                                                                                        CustomImageView(svgPath: ImageConstant.imgGroup5970, height: 5.v, width: 36.h, margin: EdgeInsets.only(top: 7.v, bottom: 8.v)),
                                                                                        CustomImageView(svgPath: ImageConstant.imgGroup5970, height: 5.v, width: 36.h, margin: EdgeInsets.only(top: 7.v, bottom: 8.v)),
                                                                                        Text("8635", style: CustomTextStyles.titleMediumWhiteA700)
                                                                                      ])))
                                                                            ])),
                                                                    SizedBox(
                                                                        height:
                                                                            10.v),
                                                                    Row(
                                                                        children: [
                                                                          RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "Valid From", style: theme.textTheme.labelLarge),
                                                                                TextSpan(text: " 10/25", style: theme.textTheme.labelLarge)
                                                                              ]),
                                                                              textAlign: TextAlign.left),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 30.h),
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                    TextSpan(text: "Valid Thru ", style: theme.textTheme.labelLarge),
                                                                                    TextSpan(text: "10/30", style: theme.textTheme.labelLarge)
                                                                                  ]),
                                                                                  textAlign: TextAlign.left))
                                                                        ]),
                                                                    SizedBox(
                                                                        height:
                                                                            17.v),
                                                                    Text(
                                                                        "Card Holder",
                                                                        style: CustomTextStyles
                                                                            .bodySmallWhiteA700),
                                                                    SizedBox(
                                                                        height:
                                                                            5.v),
                                                                    Text(
                                                                        "Will Jonas",
                                                                        style: CustomTextStyles
                                                                            .titleMediumWhiteA700_1)
                                                                  ])),
                                                          onTap: () {
                                                            onTapCard(context);
                                                          },
                                                        ),
                                                        SizedBox(height: 100.v),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgGroup6692,
                                                            height: 4.v,
                                                            width: 19.h)
                                                      ])),
                                                  SizedBox(
                                                    height: 30.0,
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 140.v,
                                                          right: 14.h),
                                                      child: Row(children: [
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        1.v),
                                                            child: Text(
                                                                "Services",
                                                                style: CustomTextStyles
                                                                    .titleLargeBluegray900_4)),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 170.0),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              onTapTxtMoreoptions(
                                                                  context);
                                                            },
                                                            child: Text(
                                                                "More options",
                                                                style: CustomTextStyles
                                                                    .titleLargeBlack90003_1),
                                                          ),
                                                        )
                                                      ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 13.v,
                                                          //left: 14.0,
                                                          right: 53.h),
                                                      child: Row(children: [
                                                        Column(children: [
                                                        
                                                          InkWell(
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLocationPrimary,
                                                                height: 36.v,
                                                                width: 30.h),
                                                            onTap: () {
                                                              onTapRECHARGE(
                                                                  context);
                                                            },
                                                          ),
                                                          //),
                                                          SizedBox(
                                                              height: 13.v),
                                                          Text("Recharge",
                                                              style: CustomTextStyles
                                                                  .labelLargeSofiaProSecondaryContainer)
                                                        ]),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 60.h),
                                                            child: Column(
                                                                children: [
                                                                  
                                                                  InkWell(
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgGroup7770,
                                                                        height: 36
                                                                            .adaptSize,
                                                                        width: 40
                                                                            .adaptSize),
                                                                    onTap: () {
                                                                      onTapCharity(
                                                                          context);
                                                                    },
                                                                  ),

                                                                  // ),
                                                                  SizedBox(
                                                                      height:
                                                                          13.v),
                                                                  Text(
                                                                      "Charity",
                                                                      style: CustomTextStyles
                                                                          .labelLargeSofiaProSecondaryContainer)
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 50.h),
                                                            child: Column(
                                                                children: [
                                                                  
                                                                  InkWell(
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgClockPrimary,
                                                                        height: 36
                                                                            .adaptSize,
                                                                        width: 40
                                                                            .adaptSize),
                                                                    onTap: () {
                                                                      onTapLoan(
                                                                          context);
                                                                    },
                                                                  ),
                                                                  // ),
                                                                  SizedBox(
                                                                      height:
                                                                          12.v),
                                                                  Text("Loan",
                                                                      style: CustomTextStyles
                                                                          .labelLargeSofiaProSecondaryContainer)
                                                                ])),
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapColumncalendar(
                                                                  context);
                                                            },
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 44
                                                                            .h),
                                                                child: Column(
                                                                    children: [
                                                                     
                                                                      InkWell(
                                                                        child: CustomImageView(
                                                                            color:
                                                                                Colors.redAccent,
                                                                            svgPath: ImageConstant.imgCalendarWhiteA700,
                                                                            height: 35.adaptSize,
                                                                            width: 45.adaptSize),
                                                                        onTap:
                                                                            () {
                                                                          onTapGifts(
                                                                              context);
                                                                        },
                                                                      ),
                                                                      // ),
                                                                      SizedBox(
                                                                          height:
                                                                              11.v),
                                                                      Text(
                                                                          "Gifts",
                                                                          style:
                                                                              CustomTextStyles.labelLargeSofiaProSecondaryContainer)
                                                                    ])))
                                                      ])),
                                                  SizedBox(height: 32.v),
                                                  Text("Schedule Payments",
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray90019_1),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 14.v,
                                                          right: 10.h),
                                                      child: SingleChildScrollView(
                                                          child: Column(
                                                        children: [
                                                          Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                              horizontal: 21.h,
                                                              vertical: 15.v,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBluegray500111
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10,
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                InkWell(
                                                                  child:
                                                                      CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgNetflix1,
                                                                    height: 51
                                                                        .adaptSize,
                                                                    width: 51
                                                                        .adaptSize,
                                                                  ),
                                                                  onTap: () {
                                                                    onTapnetflix(
                                                                        context);
                                                                  },
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 15.h,
                                                                    top: 2.v,
                                                                  ),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        "Netflix",
                                                                        style: CustomTextStyles
                                                                            .titleMediumBluegray90016,
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              11.v),
                                                                      RichText(
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: "Next Payment:",
                                                                              style: CustomTextStyles.titleSmallGray50001,
                                                                            ),
                                                                            TextSpan(
                                                                              text: " ",
                                                                            ),
                                                                            TextSpan(
                                                                              text: "12/04",
                                                                              style: CustomTextStyles.titleSmallPrimary14_1,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 88.h,
                                                                    top: 12.v,
                                                                    bottom:
                                                                        13.v,
                                                                  ),
                                                                  child:
                                                                      RichText(
                                                                    text:
                                                                        TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              "1.00",
                                                                          style:
                                                                              CustomTextStyles.titleLargeBluegray900,
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              "INR",
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodySmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              height: 15.0),
                                                          Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                              horizontal: 21.h,
                                                              vertical: 15.v,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBluegray500111
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10,
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                InkWell(
                                                                  child:
                                                                      CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgDownload1,
                                                                    height: 51
                                                                        .adaptSize,
                                                                    width: 51
                                                                        .adaptSize,
                                                                  ),
                                                                  onTap: () {
                                                                    onTapdisney(
                                                                        context);
                                                                  },
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 15.h,
                                                                    top: 2.v,
                                                                  ),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        "Hotstar",
                                                                        style: CustomTextStyles
                                                                            .titleMediumBluegray90016,
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              11.v),
                                                                      RichText(
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: "Next Payment:",
                                                                              style: CustomTextStyles.titleSmallGray50001,
                                                                            ),
                                                                            TextSpan(
                                                                              text: " ",
                                                                            ),
                                                                            TextSpan(
                                                                              text: "14/04",
                                                                              style: CustomTextStyles.titleSmallPrimary14_1,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 88.h,
                                                                    top: 12.v,
                                                                    bottom:
                                                                        13.v,
                                                                  ),
                                                                  child:
                                                                      RichText(
                                                                    text:
                                                                        TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              "3.50",
                                                                          style:
                                                                              CustomTextStyles.titleLargeBluegray900,
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              "INR",
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodySmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                              height: 15.0),
                                                          Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                              horizontal: 21.h,
                                                              vertical: 15.v,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBluegray500111
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10,
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                InkWell(
                                                                  child:
                                                                      CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgSpotify1,
                                                                    height: 51
                                                                        .adaptSize,
                                                                    width: 51
                                                                        .adaptSize,
                                                                  ),
                                                                  onTap: () {
                                                                    onTapspotify(
                                                                        context);
                                                                  },
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 12.h,
                                                                    top: 2.v,
                                                                  ),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        "Spotify",
                                                                        style: CustomTextStyles
                                                                            .titleMediumBluegray90016,
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              11.v),
                                                                      RichText(
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: "Next Payment:",
                                                                              style: CustomTextStyles.titleSmallGray50001,
                                                                            ),
                                                                            TextSpan(
                                                                              text: " ",
                                                                            ),
                                                                            TextSpan(
                                                                              text: "13/04",
                                                                              style: CustomTextStyles.titleSmallPrimary14_1,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 88.h,
                                                                    top: 12.v,
                                                                    bottom:
                                                                        13.v,
                                                                  ),
                                                                  child:
                                                                      RichText(
                                                                    text:
                                                                        TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              "10.00",
                                                                          style:
                                                                              CustomTextStyles.titleLargeBluegray900,
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              "INR",
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodySmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(height: 4.0)
                                                        ],
                                                      )

                                                          ))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 255.v),
                                            child: SingleChildScrollView(
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                  Text("Quick Actions",
                                                      style: CustomTextStyles
                                                          .titleLargeBluegray900_4),
                                                  SizedBox(height: 9.v),
                                                  Row(children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapColumnclock(
                                                              context);
                                                        },
                                                        child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal: 12
                                                                        .h,
                                                                    vertical:
                                                                        19.v),
                                                            decoration: AppDecoration
                                                                .outlineBluegray500115
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          3.v),
                                                                  CustomIconButton(
                                                                      height: 48
                                                                          .v,
                                                                      width: 46
                                                                          .h,
                                                                      padding: EdgeInsets
                                                                          .all(12
                                                                              .h),
                                                                      decoration:
                                                                          IconButtonStyleHelper
                                                                              .outlineBlack,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgClockTealA70001)),
                                                                  SizedBox(
                                                                      height:
                                                                          24.v),
                                                                  Text(
                                                                      "Money Transfer",
                                                                      style: CustomTextStyles
                                                                          .titleMediumPrimaryContainer)
                                                                ]))),
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapColumnbookmark(
                                                              context);
                                                        },
                                                        child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 13.h),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        40.h,
                                                                    vertical:
                                                                        20.v),
                                                            decoration: AppDecoration
                                                                .outlineBluegray500111
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          3.v),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgBookmarkPrimary,
                                                                      height:
                                                                          23.v,
                                                                      width:
                                                                          21.h),
                                                                  SizedBox(
                                                                      height:
                                                                          20.v),
                                                                  Text(
                                                                      "Pay Bill",
                                                                      style: CustomTextStyles
                                                                          .titleMediumPrimaryContainer)
                                                                ]))),
                                                    InkWell(
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 13.h),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      20.h,
                                                                  vertical:
                                                                      22.v),
                                                          decoration: AppDecoration
                                                              .outlineBluegray500111
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgTrashSecondarycontainer,
                                                                    height:
                                                                        23.v,
                                                                    width:
                                                                        19.h),
                                                                SizedBox(
                                                                    height:
                                                                        18.v),
                                                                Text(
                                                                    "Bank to Bank",
                                                                    style: CustomTextStyles
                                                                        .titleMediumPrimaryContainer)
                                                              ])),
                                                      onTap: () {
                                                        onTapbank(context);
                                                      },
                                                    )
                                                  ])
                                                ]))))
                                  ]))))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  onTapProfileone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  onTapTxtMoreoptions(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.moerOptionsScreen);
  }

  onTapColumncalendar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.giftCardsOneScreen);
  }

  onTapspotify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spotifyPaymentScreen);
  }

  onTapdisney(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.disneyHotstarPaymentScreen);
  }

  onTapnetflix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.netflixPaymentScreen);
  }

  onTapColumnclock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.moneyTransferScreen);
  }

  onTapColumnbookmark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.payBillScreen);
  }

  onTapRECHARGE(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainRechargeScreen);
  }

  onTapCharity(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.charityScreen);
  }

  onTapCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cardSettingsScreen);
  }

  onTapLoan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainLoanGraphScreen);
  }

  onTapGifts(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.giftCardsOneScreen);
  }

  onTapbank(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bankToBankTransferScreen);
  }
}
