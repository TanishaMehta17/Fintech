import 'package:tanisha_s_application14/presentation/airtel_recharge_confirmation_screen/airtel_recharge_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/jio_recharge_confirmation_screen/jio_recharge_confirmation_screen.dart';
import 'package:tanisha_s_application14/presentation/vi_recharge_confirmation_screen/vi_recharge_confirmation_screen.dart';

import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MainRechargeScreen extends StatelessWidget {
  MainRechargeScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController amountController = TextEditingController();

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
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Recharge"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 29.h, vertical: 35.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 13.v),
                          Text(
                            "Add Mobile Number ",
                            style: CustomTextStyles.titleLargeBluegray900_1,
                          ),
                          SizedBox(height: 6.v),
                          Text("Enter recipient mobile number",
                              style: CustomTextStyles.titleMediumPink20016_1),
                          SizedBox(height: 14.v),
                          CustomTextFormField(
                              controller: mobileNumberController,
                              fillColor: Color(0XFFA4A9AE).withOpacity(0.15),
                              hintText: "Mobile Number",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h, top: 35.v),
                              child: Text("Select Network",
                                  style: CustomTextStyles
                                      .titleMediumBluegray90019)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 1.h, top: 15.v, right: 16.h),
                              child: Row(children: [
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 27.h, vertical: 14.v),
                                    decoration: AppDecoration
                                        .outlineBluegray500111
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 4.v),
                                          InkWell(
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgDownload2,
                                                height: 51.adaptSize,
                                                width: 51.adaptSize,
                                                radius:
                                                    BorderRadius.circular(25.h),
                                                alignment:
                                                    Alignment.centerRight),
                                            onTap: () {
                                              onTapVI(context);
                                            },
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 17.h, top: 2.v),
                                              child: Text("VI",
                                                  style: CustomTextStyles
                                                      .labelLargeSecondaryContainer13))
                                        ])),
                                GestureDetector(
                                    onTap: () {
                                      onTapColumndownloadt(context);
                                    },
                                    child: Container(
                                        margin: EdgeInsets.only(left: 8.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30.h, vertical: 11.v),
                                        decoration: AppDecoration.outlinePrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgDownload351x51,
                                                  height: 51.adaptSize,
                                                  width: 51.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      25.h)),
                                              SizedBox(height: 10.v),
                                              Text("Jio",
                                                  style: CustomTextStyles
                                                      .labelLargeSecondaryContainer13),
                                              SizedBox(height: 3.v)
                                            ]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.only(left: 8.h),
                                    color: appTheme.whiteA700,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                    child: Container(
                                        height: 103.v,
                                        width: 112.h,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 17.h, vertical: 5.v),
                                        // decoration: AppDecoration
                                        //     .outlineBluegray500111
                                        //     .copyWith(
                                        //         borderRadius: BorderRadiusStyle
                                        //             .roundedBorder10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          // boxShadow: [
                                          //   BoxShadow(
                                          //       blurRadius: 4,
                                          //       spreadRadius: 0.1,
                                          //       color: Colors.white12)
                                          // ]),
                                        ),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 9.v),
                                                      child: Text("Airtel",
                                                          style: CustomTextStyles
                                                              .labelLargeSecondaryContainer13))),
                                              InkWell(
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgDownload4,
                                                    height: 75.adaptSize,
                                                    width: 75.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                            35.h),
                                                    alignment:
                                                        Alignment.topCenter),
                                                onTap: () {
                                                  onTapAirtel(context);
                                                },
                                              )
                                            ])))
                              ])),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h, top: 35.v),
                              child: Text("Enter Amount",
                                  style: CustomTextStyles
                                      .titleMediumBluegray90019)),
                          Container(
                              margin: EdgeInsets.only(left: 1.h, top: 12.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 128.h, vertical: 15.v),
                              decoration: AppDecoration.outlinePrimary1
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      // child: Text("250.00",
                                      //     style: CustomTextStyles
                                      //         .headlineMediumPrimary28)
                                      child: CustomTextFormField(
                                        controller: amountController,
                                        textStyle: CustomTextStyles
                                            .headlineMediumPrimary28,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 2.h),
                                        child: SizedBox(
                                            height: 35.v,
                                            child: VerticalDivider(
                                                width: 1.h,
                                                thickness: 1.v,
                                                color:
                                                    theme.colorScheme.primary)))
                                  ])),
                          SizedBox(height: 19.v),
                          // Wrap(
                          //     runSpacing: 12.42.v,
                          //     spacing: 12.42.h,
                          //     children: List<Widget>.generate(
                          //         3, (index) => ChipviewgrouptwItemWidget())),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: RawChip(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.h,
                                    vertical: 11.v,
                                  ),
                                  showCheckmark: false,
                                  labelPadding: EdgeInsets.zero,
                                  label: Text(
                                    "50",
                                    style: TextStyle(
                                      color:
                                          theme.colorScheme.secondaryContainer,
                                      fontSize: 22.fSize,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  selected: false,
                                  backgroundColor:
                                      appTheme.gray50001.withOpacity(0.15),
                                  selectedColor: appTheme.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      7.h,
                                    ),
                                  ),
                                  onSelected: (value) {},
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: RawChip(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.h,
                                    vertical: 11.v,
                                  ),
                                  showCheckmark: false,
                                  labelPadding: EdgeInsets.zero,
                                  label: Text(
                                    "100",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 22.fSize,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  selected: false,
                                  backgroundColor:
                                      appTheme.gray50001.withOpacity(0.15),
                                  selectedColor: appTheme.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      7.h,
                                    ),
                                  ),
                                  onSelected: (value) {},
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: RawChip(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.h,
                                    vertical: 11.v,
                                  ),
                                  showCheckmark: false,
                                  labelPadding: EdgeInsets.zero,
                                  label: Text(
                                    "150",
                                    style: TextStyle(
                                      color:
                                          theme.colorScheme.secondaryContainer,
                                      fontSize: 22.fSize,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  selected: false,
                                  backgroundColor:
                                      appTheme.gray50001.withOpacity(0.15),
                                  selectedColor: appTheme.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      7.h,
                                    ),
                                  ),
                                  onSelected: (value) {},
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          CustomElevatedButton(
                              text: "Continue",
                              margin: EdgeInsets.symmetric(horizontal: 26.h),
                              onTap: () {
                                onTapContinue(context);
                              },
                              alignment: Alignment.center)
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

  /// Navigates to the jioRechargeConfirmationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the jioRechargeConfirmationScreen.
  onTapColumndownloadt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.jioRechargeConfirmationScreen);
  }

  /// Navigates to the jioRechargeConfirmationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the jioRechargeConfirmationScreen.
  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.jioRechargeConfirmationScreen);
  // }
  onTapContinue(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              JioRechargeConfirmationScreen(amountController.text.toString())),
    );
  }

  onTapVI(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              ViRechargeConfirmationScreen(amountController.text.toString())),
    );
  }

  onTapAirtel(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => AirtelRechargeConfirmationScreen(
              amountController.text.toString())),
    );
  }
}
