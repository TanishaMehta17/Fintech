import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class CardSettingsScreen extends StatelessWidget {
  CardSettingsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 5.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(
                    text: "My Card",
                    margin: EdgeInsets.only(top: 26.v, bottom: 3.v)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin: EdgeInsets.fromLTRB(30.h, 3.v, 30.h, 5.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 17.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 29.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                // Expanded(
                                                //     child: Container(
                                                //         padding:
                                                //             EdgeInsets.symmetric(
                                                //                 horizontal:
                                                //                     38.h,
                                                //                 vertical: 30.v),
                                                //         decoration: BoxDecoration(
                                                //             borderRadius:
                                                //                 BorderRadiusStyle
                                                //                     .roundedBorder10,
                                                //             image: DecorationImage(
                                                //                 image: fs.Svg(
                                                //                     ImageConstant
                                                //                         .imgGroup6062),
                                                //                 fit: BoxFit
                                                //                     .cover)),
                                                //         child: Column(
                                                //             mainAxisSize:
                                                //                 MainAxisSize
                                                //                     .min,
                                                //             crossAxisAlignment:
                                                //                 CrossAxisAlignment
                                                //                     .start,
                                                //             mainAxisAlignment:
                                                //                 MainAxisAlignment
                                                //                     .center,
                                                //             children: [
                                                //               SizedBox(
                                                //                   height: 83.v,
                                                //                   width: 189.h,
                                                //                   child: Stack(
                                                //                       alignment:
                                                //                           Alignment
                                                //                               .bottomCenter,
                                                //                       children: [
                                                //                         Align(
                                                //                             alignment:
                                                //                                 Alignment.topLeft,
                                                //                             child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                //                               Text("Available Balance", style: CustomTextStyles.titleSmallWhiteA700),
                                                //                               SizedBox(height: 3.v),
                                                //                               RichText(
                                                //                                   text: TextSpan(children: [
                                                //                                     TextSpan(text: "44,228", style: CustomTextStyles.headlineMediumWhiteA700Regular),
                                                //                                     TextSpan(text: ".76", style: CustomTextStyles.titleLargeRegular)
                                                //                                   ]),
                                                //                                   textAlign: TextAlign.left)
                                                //                             ])),
                                                //                         Align(
                                                //                             alignment:
                                                //                                 Alignment.bottomCenter,
                                                //                             child: Container(
                                                //                                 width: 188.h,
                                                //                                 margin: EdgeInsets.only(left: 1.h, top: 61.v),
                                                //                                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                //                                   CustomImageView(svgPath: ImageConstant.imgGroup5970, height: 5.v, width: 36.h, margin: EdgeInsets.only(top: 7.v, bottom: 8.v)),
                                                //                                   CustomImageView(svgPath: ImageConstant.imgGroup5970, height: 5.v, width: 36.h, margin: EdgeInsets.only(top: 7.v, bottom: 8.v)),
                                                //                                   CustomImageView(svgPath: ImageConstant.imgGroup5970, height: 5.v, width: 36.h, margin: EdgeInsets.only(top: 7.v, bottom: 8.v)),
                                                //                                   Text("8635", style: CustomTextStyles.titleMediumWhiteA700)
                                                //                                 ])))
                                                //                       ])),
                                                //               SizedBox(
                                                //                   height: 10.v),
                                                //               Row(children: [
                                                //                 RichText(
                                                //                     text: TextSpan(
                                                //                         children: [
                                                //                           TextSpan(
                                                //                               text: "Valid From",
                                                //                               style: theme.textTheme.labelLarge),
                                                //                           TextSpan(
                                                //                               text: " 10/25",
                                                //                               style: theme.textTheme.labelLarge)
                                                //                         ]),
                                                //                     textAlign:
                                                //                         TextAlign
                                                //                             .left),
                                                //                 Padding(
                                                //                     padding: EdgeInsets.only(
                                                //                         left: 30
                                                //                             .h),
                                                //                     child: RichText(
                                                //                         text: TextSpan(children: [
                                                //                           TextSpan(
                                                //                               text: "Valid Thru ",
                                                //                               style: theme.textTheme.labelLarge),
                                                //                           TextSpan(
                                                //                               text: "10/30",
                                                //                               style: theme.textTheme.labelLarge)
                                                //                         ]),
                                                //                         textAlign: TextAlign.left))
                                                //               ]),
                                                //               SizedBox(
                                                //                   height: 17.v),
                                                //               Text(
                                                //                   "Card Holder",
                                                //                   style: CustomTextStyles
                                                //                       .bodySmallWhiteA700),
                                                //               SizedBox(
                                                //                   height: 5.v),
                                                //               Text("Will Jonas",
                                                //                   style: CustomTextStyles
                                                //                       .titleMediumWhiteA700_1)
                                                //             ]))),
                                                SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    padding: EdgeInsets.only(
                                                        left: 10.h),
                                                    child: IntrinsicWidth(
                                                        child: Container(
                                                            padding:
                                                                EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        78.h,
                                                                    vertical:
                                                                        28.v),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder10,
                                                                image: DecorationImage(
                                                                    image: fs.Svg(
                                                                        ImageConstant
                                                                            .imgGroup6603),
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
                                                                  Text(
                                                                      "Available Balance",
                                                                      style: CustomTextStyles
                                                                          .titleSmallWhiteA700),
                                                                  SizedBox(
                                                                      height:
                                                                          8.v),
                                                                  RichText(
                                                                      text: TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                                text: "",
                                                                                style: CustomTextStyles.headlineMediumWhiteA700Regular),
                                                                            TextSpan(
                                                                                text: "4,228",
                                                                                style: CustomTextStyles.headlineMediumWhiteA700),
                                                                            TextSpan(
                                                                                text: ".76",
                                                                                style: CustomTextStyles.titleLarge22)
                                                                          ]),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left),
                                                                  SizedBox(
                                                                      height:
                                                                          2.v),
                                                                  Row(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgGroup5970,
                                                                            height: 5.v,
                                                                            width: 36.h,
                                                                            margin: EdgeInsets.symmetric(vertical: 11.v)),
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant
                                                                                .imgGroup5970,
                                                                            height: 5
                                                                                .v,
                                                                            width: 36
                                                                                .h,
                                                                            margin: EdgeInsets.only(
                                                                                left: 15.h,
                                                                                top: 11.v,
                                                                                bottom: 11.v)),
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant
                                                                                .imgGroup5970,
                                                                            height: 5
                                                                                .v,
                                                                            width: 36
                                                                                .h,
                                                                            margin: EdgeInsets.only(
                                                                                left: 15.h,
                                                                                top: 11.v,
                                                                                bottom: 11.v)),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 15.h),
                                                                            child: Text("8635", style: CustomTextStyles.titleMediumWhiteA700))
                                                                      ]),
                                                                  SizedBox(
                                                                      height:
                                                                          6.v),
                                                                  Row(
                                                                      children: [
                                                                        RichText(
                                                                            text:
                                                                                TextSpan(children: [
                                                                              TextSpan(text: "Valid From", style: theme.textTheme.labelLarge),
                                                                              TextSpan(text: " 10/25", style: theme.textTheme.labelLarge)
                                                                            ]),
                                                                            textAlign: TextAlign.left),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 30.h),
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "Valid Thru ", style: theme.textTheme.labelLarge),
                                                                                  TextSpan(text: "10/30", style: theme.textTheme.labelLarge)
                                                                                ]),
                                                                                textAlign: TextAlign.left))
                                                                      ]),
                                                                  SizedBox(
                                                                      height:
                                                                          13.v),
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
                                                                ]))))
                                              ]),
                                              SizedBox(height: 20.v),
                                              CustomImageView(
                                                  // svgPath: ImageConstant
                                                  //     .imgGroup6692,
                                                  height: 4.v,
                                                  width: 19.h)
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 13.v, right: 30.h),
                                        child: Row(children: [
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.h,
                                                  vertical: 21.v),
                                              decoration: AppDecoration
                                                  .fillTealA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 42.h,
                                                                top: 2.v),
                                                        child: Text(
                                                            "Credit Limit",
                                                            style: CustomTextStyles
                                                                .titleSmallTealA70001)),
                                                    SizedBox(height: 2.v),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 42,
                                                              right: 42),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "271.00",
                                                                    style: CustomTextStyles
                                                                        .titleLargeTealA70001),
                                                                TextSpan(
                                                                    text: "INR",
                                                                    style: CustomTextStyles
                                                                        .bodySmallTealA70001)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left),
                                                    )
                                                  ])),
                                          SizedBox(width: 20),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.h,
                                                  vertical: 21.v),
                                              decoration: AppDecoration
                                                  .fillPrimary1
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 30.h,
                                                                top: 2.v),
                                                        child: Text(
                                                            "Card Status",
                                                            style: CustomTextStyles
                                                                .titleLargePrimary)),
                                                    SizedBox(height: 2.v),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 52,
                                                              right: 42),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "Active",
                                                                    style: CustomTextStyles
                                                                        .bodyLargePrimary),
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left),
                                                    )
                                                  ])),
                                          // Container(
                                          //     margin:
                                          //         EdgeInsets.only(left: 12.h),
                                          //     padding: EdgeInsets.symmetric(
                                          //         horizontal: 16.h,
                                          //         vertical: 20.v),
                                          //     decoration: AppDecoration
                                          //         .fillPrimary1
                                          //         .copyWith(
                                          //             borderRadius:
                                          //                 BorderRadiusStyle
                                          //                     .roundedBorder10),
                                          //     child: Column(
                                          //         mainAxisSize:
                                          //             MainAxisSize.min,
                                          //         crossAxisAlignment:
                                          //             CrossAxisAlignment.start,
                                          //         mainAxisAlignment:
                                          //             MainAxisAlignment.center,
                                          //         children: [
                                          //           Padding(
                                          //               padding:
                                          //                   EdgeInsets.only(
                                          //                       left: 2.h,
                                          //                       top: 3.v),
                                          //               child: Text(
                                          //                   "Card Status",
                                          //                   style: CustomTextStyles
                                          //                       .titleSmallPrimary14)),
                                          //           SizedBox(height: 3.v),
                                          //           Text("Active",
                                          //               style: CustomTextStyles
                                          //                   .titleLargePrimary)
                                          //         ]))
                                        ])),
                                    SizedBox(height: 25.v),
                                    Text("Settings",
                                        style: CustomTextStyles
                                            .bodyLargeBluegray900),
                                    GestureDetector(
                                      onTap: () {
                                        onTapRowsignalone(context);
                                      },
                                      // child: Container(
                                      //     margin: EdgeInsets.only(
                                      //         top: 20.v, right: 30.h),
                                      //     padding: EdgeInsets.symmetric(
                                      //         horizontal: 21.h,
                                      //         vertical: 8.v),
                                      //     decoration: AppDecoration
                                      //         .outlineBluegray500111
                                      //         .copyWith(
                                      //             borderRadius:
                                      //                 BorderRadiusStyle
                                      //                     .roundedBorder10),
                                      //     child: Row(
                                      //         mainAxisAlignment:
                                      //             MainAxisAlignment.center,
                                      //         crossAxisAlignment:
                                      //             CrossAxisAlignment.start,
                                      //         mainAxisSize: MainAxisSize.min,
                                      //         children: [
                                      //           CustomImageView(
                                      //               svgPath: ImageConstant
                                      //                   .imgSignalTealA70001,
                                      //               height: 14.v,
                                      //               width: 13.h),
                                      //           Padding(
                                      //               padding: EdgeInsets.only(
                                      //                   left: 14.h,
                                      //                   top: 10.v,
                                      //                   bottom: 14.v),
                                      //               child: Text("Change Pin",
                                      //                   style: CustomTextStyles
                                      //                       .titleMediumBluegray90016_1)),
                                      //           Spacer(),
                                      //           CustomImageView(
                                      //               svgPath: ImageConstant
                                      //                   .imgArrowleftIndigoA200,
                                      //               height: 27.v,
                                      //               width: 26.h,
                                      //               margin: EdgeInsets.only(
                                      //                   top: 16.v))
                                      //         ]))
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              top: 23.v, right: 30.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.h, vertical: 14.v),
                                          decoration: AppDecoration
                                              .outlineBluegray500111
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomIconButton(
                                                    height: 39.adaptSize,
                                                    width: 39.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 5.h),
                                                    padding:
                                                        EdgeInsets.all(6.h),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .fillIndigoA,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgSignalTealA70001)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 14.h,
                                                        top: 5.v,
                                                        bottom: 5.v),
                                                    child: Text("Change pin",
                                                        style: CustomTextStyles
                                                            .titleMediumBluegray90016_1)),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleftIndigoA200,
                                                    height: 29.v,
                                                    width: 30.h,
                                                    margin: EdgeInsets.only(
                                                        top: 16.v))
                                                // CustomImageView(
                                                //     svgPath: ImageConstant
                                                //         .imgCheckmarkPrimary20x38,
                                                //     height: 20.v,
                                                //     width: 38.h,
                                                //     margin: EdgeInsets.only(
                                                //         top: 4.v, bottom: 5.v))
                                              ])),
                                    ),
                                    // Container(
                                    //     margin: EdgeInsets.only(
                                    //         top: 23.v, right: 30.h),
                                    //     padding: EdgeInsets.symmetric(
                                    //         horizontal: 16.h, vertical: 14.v),
                                    //     decoration: AppDecoration
                                    //         .outlineBluegray500111
                                    //         .copyWith(
                                    //             borderRadius: BorderRadiusStyle
                                    //                 .roundedBorder10),
                                    //     child: Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment.end,
                                    //         mainAxisSize: MainAxisSize.min,
                                    //         children: [
                                    //           CustomImageView(
                                    //               svgPath: ImageConstant
                                    //                   .imgMusicPrimary,
                                    //               height: 29.adaptSize,
                                    //               width: 29.adaptSize,
                                    //               margin: EdgeInsets.only(
                                    //                   left: 6.h)),
                                    //           Padding(
                                    //               padding: EdgeInsets.only(
                                    //                   left: 14.h,
                                    //                   top: 6.v,
                                    //                   bottom: 4.v),
                                    //               child: Text("Lock Card",
                                    //                   style: CustomTextStyles
                                    //                       .titleMediumBluegray90016_1)),
                                    //           Spacer(),
                                    //           CustomSwitch(
                                    //               margin: EdgeInsets.symmetric(
                                    //                   vertical: 5.v),
                                    //               value: isSelectedSwitch,
                                    //               onChange: (value) {
                                    //                 isSelectedSwitch = value;
                                    //               })
                                    //         ])),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 23.v, right: 30.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 14.v),
                                        decoration: AppDecoration
                                            .outlineBluegray500111
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomIconButton(
                                                  height: 39.adaptSize,
                                                  width: 39.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                  padding: EdgeInsets.all(6.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillPrimary,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgMusicPrimary)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 14.h,
                                                      top: 5.v,
                                                      bottom: 5.v),
                                                  child: Text("Loack Card",
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray90016_1)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmarkPrimary20x38,
                                                  height: 20.v,
                                                  width: 38.h,
                                                  margin: EdgeInsets.only(
                                                      top: 4.v, bottom: 5.v))
                                            ])),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 23.v, right: 30.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 14.v),
                                        decoration: AppDecoration
                                            .outlineBluegray500111
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomIconButton(
                                                  height: 39.adaptSize,
                                                  width: 39.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                  padding: EdgeInsets.all(6.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillIndigoA,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup6716)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 14.h,
                                                      top: 5.v,
                                                      bottom: 5.v),
                                                  child: Text("Deactivate Card",
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray90016_1)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmarkPrimary20x38,
                                                  height: 20.v,
                                                  width: 38.h,
                                                  margin: EdgeInsets.only(
                                                      top: 4.v, bottom: 5.v))
                                            ])),
                                    CustomElevatedButton(
                                        text: "Save",
                                        margin: EdgeInsets.only(
                                            left: 26.h, top: 23.v, right: 56.h),
                                        onTap: () {
                                          onTapSave(context);
                                        })
                                  ]))))
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

  /// Navigates to the mobileNumberPinChangeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the mobileNumberPinChangeScreen.
  onTapRowsignalone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileNumberPinChangeScreen);
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the dashboardScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }
}
