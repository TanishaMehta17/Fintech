import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NeftScreen extends StatelessWidget {
  NeftScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController nameController = TextEditingController();

  TextEditingController accountnumberlaController = TextEditingController();

  TextEditingController accountnumberlaController1 = TextEditingController();

  TextEditingController ifsccodelabelController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 78.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "Fund Transfer"),
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
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 32.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Container(
                                height: 47.adaptSize,
                                width: 47.adaptSize,
                                decoration: BoxDecoration(
                                    color: appTheme.redA100,
                                    borderRadius: BorderRadius.circular(23.h))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 17.h, top: 13.v, bottom: 12.v),
                                child: Text("South Indian Bank Fastag",
                                    style:
                                        CustomTextStyles.bodyLargeBlack90003))
                          ]),
                          SizedBox(height: 19.v),
                          Divider(color: appTheme.black90003.withOpacity(0.2)),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h, top: 25.v),
                              child: Text("Make new transfer",
                                  style: CustomTextStyles
                                      .titleMediumBluegray90019)),
                          CustomTextFormField(
                              controller: nameController,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 12.v, right: 19.h),
                              hintText: "Name",
                              hintStyle: theme.textTheme.bodyLarge!,
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillRed,
                              fillColor: appTheme.red50),
                          CustomTextFormField(
                              controller: accountnumberlaController,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 13.v, right: 19.h),
                              hintText: "Enter Account Number",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputType: TextInputType.number,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 19.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillRed,
                              fillColor: appTheme.red50),
                          CustomTextFormField(
                              controller: accountnumberlaController1,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 13.v, right: 19.h),
                              hintText: "Re-enter Acoount Number",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputType: TextInputType.number,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 19.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillRed,
                              fillColor: appTheme.red50),
                          CustomTextFormField(
                              controller: ifsccodelabelController,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 13.v, right: 18.h),
                              hintText: "IFSC Code",
                              hintStyle: theme.textTheme.bodyLarge!,
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillRed,
                              fillColor: appTheme.red50),
                          CustomTextFormField(
                              controller: mobileNumberController,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 13.v, right: 19.h),
                              hintText: "Reciever’s Mobile Number",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone),
                          CustomElevatedButton(
                            text: "Submit",
                            margin: EdgeInsets.fromLTRB(23.h, 76.v, 51.h, 5.v),
                            onTap: () {
                              onTapneft(context);
                            },
                          )
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

  onTapneft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.toChoseTheModeOfTransferScreen);
  }
}
