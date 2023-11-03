import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PayBillScreen extends StatelessWidget {
  PayBillScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  String radioGroup = "";

  String radioGroup1 = "";

  TextEditingController nameController = TextEditingController();

  TextEditingController referenceController = TextEditingController();

  TextEditingController checkmarkController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                centerTitle: true,
                title: AppbarSubtitle2(text: "Pay Bill"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 31.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 30.h, right: 30.h, bottom: 5.v),
                                  child: Column(children: [
                                    Text("Your Bills",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90019_1),
                                    SizedBox(height: 35.v),
                                    SizedBox(
                                        height: 82.v,
                                        width: 367.h,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                //       child: Container(
                                                //           margin: EdgeInsets.only(
                                                //               bottom: 77.v),
                                                //           padding:
                                                //               EdgeInsets.symmetric(
                                                //                   horizontal: 25.h,
                                                //                   vertical: 7.v),
                                                //           decoration: AppDecoration
                                                //               .outlineBluegray500111
                                                //               .copyWith(
                                                //                   borderRadius:
                                                //                       BorderRadiusStyle
                                                //                           .roundedBorder10),
                                                //           child: Row(
                                                //               crossAxisAlignment:
                                                //                   CrossAxisAlignment
                                                //                       .start,
                                                //               children: [
                                                //                 InkWell(
                                                //                   child: Container(
                                                //                       height: 39.v,
                                                //                       width: 29.h,
                                                //                       margin: EdgeInsets.only(
                                                //                           bottom:
                                                //                               10.v),
                                                //                       child: Stack(
                                                //                           alignment:
                                                //                               Alignment
                                                //                                   .topCenter,
                                                //                           children: [
                                                //                             Opacity(
                                                //                                 opacity:
                                                //                                     0.15,
                                                //                                 child:
                                                //                                     Align(
                                                //                                   alignment: Alignment.bottomCenter,
                                                //                                   //         child: Container(height: 29.adaptSize, width: 39.adaptSize, decoration: BoxDecoration(color: appTheme.teal30067, borderRadius: BorderRadius.circular(5.h)))
                                                //                                 )),
                                                //                             // CustomImageView(
                                                //                             //     svgPath: ImageConstant
                                                //                             //         .imgMusic,
                                                //                             //     height: 16
                                                //                             //         .adaptSize,
                                                //                             //     width: 16
                                                //                             //         .adaptSize,
                                                //                             //     alignment:
                                                //                             //         Alignment.topLeft
                                                //                             //)
                                                //                           ])),
                                                //                   onTap: () {
                                                //                     onTapinternet(
                                                //                         context);
                                                //                   },
                                                //                 ),
                                                //                 Padding(
                                                //                     padding: EdgeInsets
                                                //                         .only(
                                                //                             left: 19
                                                //                                 .h,
                                                //                             top: 17
                                                //                                 .v,
                                                //                             bottom: 14
                                                //                                 .v),
                                                //                     child: Text(
                                                //                         "Internet Bill",
                                                //                         style: CustomTextStyles
                                                //                             .titleMediumBluegray90016_1))
                                                //               ]))),
                                                //   Align(
                                                //       alignment: Alignment
                                                //           .bottomCenter,
                                                //       child: GestureDetector(
                                                //           onTap: () {
                                                //             onTapColumnelectrici(
                                                //                 context);
                                                //           },
                                                //           child: Container(
                                                //               padding: EdgeInsets
                                                //                   .symmetric(
                                                //                       horizontal:
                                                //                           25.h,
                                                //                       vertical:
                                                //                           17.v),
                                                //               decoration: AppDecoration
                                                //                   .outlineBluegray500111
                                                //                   .copyWith(
                                                //                       borderRadius:
                                                //                           BorderRadiusStyle
                                                //                               .roundedBorder10),
                                                //               child:
                                                //                   CustomRadioButton(
                                                //                       logoImagePath:
                                                //                           ImageConstant
                                                //                               .imgMusic,
                                                //                       width: 316.h,
                                                //                       text:
                                                //                           "Electricity Bill",
                                                //                       value:
                                                //                           "Electricity Bill",
                                                //                       groupValue:
                                                //                           radioGroup,
                                                //                       padding: EdgeInsets
                                                //                           .fromLTRB(
                                                //                               19.h,
                                                //                               2.v,
                                                //                               30.h,
                                                //                               2.v),
                                                //                       textStyle:
                                                //                           CustomTextStyles
                                                //                               .titleMediumBluegray90016_1,
                                                //                       isRightCheck:
                                                //                           true,
                                                //                       onChange:
                                                //                           (value) {
                                                //                         radioGroup =
                                                //                             value;
                                                //                       })))),
                                                //   CustomImageView(
                                                //       svgPath:
                                                //           ImageConstant.imgUser,
                                                //       height: 91.v,
                                                //       width: 20.h,
                                                //       alignment: Alignment.topRight,
                                                //       margin: EdgeInsets.only(
                                                //           top: 17.v, right: 25.h)
                                                child: InkWell(
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 25.h,
                                                              vertical: 17.v),
                                                      decoration: AppDecoration
                                                          .outlineBluegray500111
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomIconButton(
                                                                height: 29
                                                                    .adaptSize,
                                                                width: 29
                                                                    .adaptSize,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(5
                                                                            .h),
                                                                decoration:
                                                                    IconButtonStyleHelper
                                                                        .fillGray,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgUserSecondarycontainer)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 19
                                                                            .h,
                                                                        top:
                                                                            5.v,
                                                                        bottom: 5
                                                                            .v),
                                                                child: Text(
                                                                    "Inetrmet Bills",
                                                                    style: CustomTextStyles
                                                                        .titleMediumBluegray90016_1)),
                                                            Spacer(),
                                                            Container(
                                                                height: 20
                                                                    .adaptSize,
                                                                width: 20
                                                                    .adaptSize,
                                                                margin: EdgeInsets
                                                                    .symmetric(
                                                                        vertical: 4
                                                                            .v),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(10
                                                                            .h),
                                                                    border: Border.all(
                                                                        color: theme
                                                                            .colorScheme
                                                                            .primary,
                                                                        width: 1
                                                                            .h)))
                                                          ])),
                                                  onTap: () {
                                                    onTapinternet(context);
                                                  },
                                                ),
                                              )
                                            ])),
                                    //SizedBox(height: 3.v),
                                    InkWell(
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 25.h, vertical: 17.v),
                                          decoration: AppDecoration
                                              .outlineBluegray500111
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomIconButton(
                                                    height: 29.adaptSize,
                                                    width: 29.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(5.h),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .fillGray,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUserSecondarycontainer)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 19.h,
                                                        top: 5.v,
                                                        bottom: 5.v),
                                                    child: Text("Water Bills",
                                                        style: CustomTextStyles
                                                            .titleMediumBluegray90016_1)),
                                                Spacer(),
                                                Container(
                                                    height: 20.adaptSize,
                                                    width: 20.adaptSize,
                                                    margin: EdgeInsets
                                                        .symmetric(
                                                            vertical: 4.v),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.h),
                                                        border: Border
                                                            .all(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                width: 1.h)))
                                              ])),
                                      onTap: () {
                                        onTapwater(context);
                                      },
                                    ),
                                    SizedBox(height: 15),
                                    InkWell(
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 25.h, vertical: 17.v),
                                          decoration: AppDecoration
                                              .outlineBluegray500111
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomIconButton(
                                                    height: 29.adaptSize,
                                                    width: 29.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(5.h),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .fillGray,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUserSecondarycontainer)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 19.h,
                                                        top: 5.v,
                                                        bottom: 5.v),
                                                    child: Text(
                                                        "Electricity Bills",
                                                        style: CustomTextStyles
                                                            .titleMediumBluegray90016_1)),
                                                Spacer(),
                                                Container(
                                                    height: 20.adaptSize,
                                                    width: 20.adaptSize,
                                                    margin: EdgeInsets
                                                        .symmetric(
                                                            vertical: 4.v),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.h),
                                                        border: Border
                                                            .all(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                width: 1.h)))
                                              ])),
                                      onTap: () {
                                        onTapColumnelectrici(context);
                                      },
                                    ),
                                    // InkWell(
                                    //   child: Container(
                                    //       padding: EdgeInsets.symmetric(
                                    //           horizontal: 25.h, vertical: 17.v),
                                    //       decoration: AppDecoration
                                    //           .outlineBluegray500111
                                    //           .copyWith(
                                    //               borderRadius:
                                    //                   BorderRadiusStyle
                                    //                       .roundedBorder10),
                                    //       child: CustomRadioButton(
                                    //           width: 316.h,
                                    //           text: "Water Bill",
                                    //           value: "Water Bill",
                                    //           groupValue: radioGroup1,
                                    //           padding: EdgeInsets.fromLTRB(
                                    //               19.h, 3.v, 30.h, 3.v),
                                    //           textStyle: CustomTextStyles
                                    //               .titleMediumBluegray90016_1,
                                    //           isRightCheck: true,
                                    //           onChange: (value) {
                                    //             radioGroup1 = value;
                                    //           })),
                                    //   onTap: () {
                                    //     onTapwater(context);
                                    //   },
                                    // ),
                                    SizedBox(height: 13.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.h, vertical: 17.v),
                                        decoration: AppDecoration
                                            .outlineBluegray500111
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomIconButton(
                                                  height: 29.adaptSize,
                                                  width: 29.adaptSize,
                                                  padding: EdgeInsets.all(5.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillGray,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUserSecondarycontainer)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19.h,
                                                      top: 5.v,
                                                      bottom: 5.v),
                                                  child: Text("Other",
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray90016_1)),
                                              Spacer(),
                                              Container(
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 4.v),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.h),
                                                      border: Border.all(
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          width: 1.h)))
                                            ])),
                                    SizedBox(height: 36.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Fill Details",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019_1)),
                                    SizedBox(height: 8.v),
                                    CustomTextFormField(
                                        controller: nameController,
                                        hintText: "Company Name",
                                        hintStyle: theme.textTheme.bodyLarge!),
                                    SizedBox(height: 9.v),
                                    CustomTextFormField(
                                        controller: referenceController,
                                        hintText: "Reference Number",
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray50001,
                                        textInputType: TextInputType.number),
                                    SizedBox(height: 9.v),
                                    CustomTextFormField(
                                        controller: checkmarkController,
                                        hintText: "Pasword",
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray50001,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 21.v, 23.h, 20.v),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCheckmarkSecondarycontainer17x22)),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 60.v),
                                        obscureText: true,
                                        contentPadding: EdgeInsets.only(
                                            left: 24.h,
                                            top: 20.v,
                                            bottom: 20.v),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .fillGrayTL7,
                                        fillColor: appTheme.gray50001
                                            .withOpacity(0.15)),
                                    CustomElevatedButton(
                                        text: "Next",
                                        margin: EdgeInsets.only(
                                            left: 26.h, top: 36.v, right: 26.h),
                                        onTap: () {
                                          onTapNext(context);
                                        })
                                  ]))))
                    ]))),
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

  /// Navigates to the payBillAmountElectricityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the payBillAmountElectricityScreen.
  onTapColumnelectrici(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.payBillAmountElectricityScreen);
  }

  onTapwater(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.waterBillPayBillScreen);
  }

  onTapinternet(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.interNetBillPayBillScreen);
  }

  /// Navigates to the payBillAmountElectricityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the payBillAmountElectricityScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.payBillAmountElectricityScreen);
  }
}
