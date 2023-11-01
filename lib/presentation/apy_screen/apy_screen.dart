import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ApyScreen extends StatelessWidget {
  ApyScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController nameController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController gendervalueoneController = TextEditingController();

  TextEditingController adharnumberoneController = TextEditingController();

  TextEditingController adharnumberController = TextEditingController();

  TextEditingController maritalstatusController = TextEditingController();

  TextEditingController adharnumberController1 = TextEditingController();

  TextEditingController accountnumberController = TextEditingController();

  TextEditingController ifsecodeoneController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController nameController1 = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

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
                    margin: EdgeInsets.only(left: 30.h, top: 2.v, bottom: 7.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "Atal Pension Yojana",
                    margin: EdgeInsets.only(left: 44.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin: EdgeInsets.fromLTRB(20.h, 7.v, 30.h, 2.v))
                ]),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 22.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 26.h, right: 26.h, bottom: 5.v),
                                  child: Column(children: [
                                    SizedBox(
                                        height: 200.v,
                                        width: 321.h,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 137.h,
                                                              vertical: 63.v),
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: fs.Svg(
                                                                  ImageConstant
                                                                      .imgGroup17),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            SizedBox(
                                                                height: 44.v),
                                                            Text("APY",
                                                                style: CustomTextStyles
                                                                    .titleLargeBluegray90022)
                                                          ]))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage356,
                                                  height: 100.adaptSize,
                                                  width: 100.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      10.h),
                                                  alignment:
                                                      Alignment.topCenter)
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 3.h, top: 26.v),
                                            child: Text("Add Information",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray90019))),
                                    CustomTextFormField(
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        controller: nameController,
                                        margin: EdgeInsets.only(
                                            left: 3.h, top: 22.v, right: 3.h),
                                        hintText: "Name",
                                        hintStyle: theme.textTheme.bodyLarge!),
                                    CustomTextFormField(
                                        controller: mobileNumberController,
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        margin: EdgeInsets.only(
                                            left: 3.h, top: 23.v, right: 3.h),
                                        hintText: "Mobile Number",
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        textInputType: TextInputType.phone),
                                    CustomTextFormField(
                                        controller: gendervalueoneController,
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        margin: EdgeInsets.only(
                                            left: 3.h, top: 23.v, right: 3.h),
                                        hintText: "Gender",
                                        hintStyle: theme.textTheme.bodyLarge!),
                                    CustomTextFormField(
                                        controller: adharnumberoneController,
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        margin: EdgeInsets.only(
                                            left: 3.h, top: 23.v, right: 3.h),
                                        hintText: "Adhara number ",
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        textInputType: TextInputType.number),
                                    CustomTextFormField(
                                        controller: adharnumberController,
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        margin: EdgeInsets.only(
                                            left: 3.h, top: 23.v, right: 3.h),
                                        hintText: "Adhara number ",
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        textInputType: TextInputType.number),
                                    CustomTextFormField(
                                        controller: maritalstatusController,
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        margin: EdgeInsets.only(
                                            left: 3.h, top: 23.v, right: 3.h),
                                        hintText: "Marital Status",
                                        hintStyle: theme.textTheme.bodyLarge!),
                                    CustomTextFormField(
                                        controller: adharnumberController1,
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        margin: EdgeInsets.only(
                                            left: 3.h, top: 23.v, right: 3.h),
                                        hintText: "Adhara number ",
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        textInputType: TextInputType.number),
                                    SizedBox(height: 26.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Add Account Details",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019)),
                                    CustomTextFormField(
                                        controller: accountnumberController,
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        margin: EdgeInsets.only(
                                            top: 11.v, right: 6.h),
                                        hintText: "Account Number",
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        textInputType: TextInputType.number),
                                    CustomTextFormField(
                                        controller: ifsecodeoneController,
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        margin: EdgeInsets.only(
                                            top: 12.v, right: 6.h),
                                        hintText: "IFSE Code ",
                                        hintStyle: theme.textTheme.bodyLarge!),
                                    SizedBox(height: 12.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller: amountController,
                                                  fillColor: Color(0XFFA4A9AE)
                                                      .withOpacity(0.15),
                                                  margin: EdgeInsets.only(
                                                      right: 8.h),
                                                  hintText: "Pension amount",
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!)),
                                          Expanded(
                                              child: CustomElevatedButton(
                                                  height: 60.v,
                                                  text: "Auto Debit Date",
                                                  margin: EdgeInsets.only(
                                                      left: 8.h),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillGray,
                                                  buttonTextStyle: theme
                                                      .textTheme.bodyLarge!))
                                        ]),
                                    SizedBox(height: 26.v),
                                    Text("Contribution Period",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90019),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 130.h,
                                            top: 25.v,
                                            right: 130.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 2.v),
                                        decoration: AppDecoration.fillGray50001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 5.v),
                                              SizedBox(
                                                  width: 79.h,
                                                  child: Text("year drop down",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .titleMediumBlack90003
                                                          .copyWith(
                                                              height: 1.06)))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 3.h, top: 26.v),
                                            child: Text("Nominee details",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray90019))),
                                    CustomTextFormField(
                                        controller: nameController1,
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        margin: EdgeInsets.only(
                                            left: 3.h, top: 12.v, right: 8.h),
                                        hintText: "Nominee name ",
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 4.h, vertical: 19.v)),
                                    CustomTextFormField(
                                        controller: dateOfBirthController,
                                        fillColor:
                                            Color(0XFFA4A9AE).withOpacity(0.15),
                                        margin: EdgeInsets.only(
                                            left: 3.h, top: 13.v, right: 3.h),
                                        hintText: "Nominee Date Of Birth ",
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        textInputAction: TextInputAction.done,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 4.h, vertical: 19.v)),
                                    CustomElevatedButton(
                                        text: "Submit",
                                        margin: EdgeInsets.only(
                                            left: 29.h, top: 26.v, right: 29.h),
                                        buttonTextStyle:
                                            CustomTextStyles.titleLargeBlack900)
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
}
