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
class KycUpdatePhoneNoScreen extends StatelessWidget {
  KycUpdatePhoneNoScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController group137Controller = TextEditingController();

  TextEditingController phoneController = TextEditingController();

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
                title: AppbarSubtitle3(text: "KYC Update _ Phone No."),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin: EdgeInsets.fromLTRB(16.h, 4.v, 29.h, 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 53.h, vertical: 35.v),
                    child: Column(children: [
                      CustomTextFormField(
                          controller: group137Controller,
                          suffix: SizedBox(
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFrame8018)),
                          suffixConstraints: BoxConstraints(maxHeight: 225.v),
                          borderDecoration: TextFormFieldStyleHelper.custom,
                          filled: false),
                      CustomElevatedButton(
                          text: "Browse from Storage",
                          margin: EdgeInsets.only(left: 4.h, top: 88.v)),
                      CustomTextFormField(
                          controller: phoneController,
                          margin: EdgeInsets.only(top: 65.v, right: 8.h),
                          hintText: "KYC Update _ Phone No.",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.phone),
                      CustomElevatedButton(
                        text: "Submit",
                        margin: EdgeInsets.fromLTRB(3.h, 65.v, 3.h, 5.v),
                        onTap: () {
                          onTapkyphcon(context);
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

  onTapkyphcon(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.kycConfirmationSuccessfulTransferScreen);
  }
}
