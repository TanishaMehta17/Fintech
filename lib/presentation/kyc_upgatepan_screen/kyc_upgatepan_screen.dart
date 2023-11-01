import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class KycUpgatepanScreen extends StatelessWidget {
  KycUpgatepanScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController group163Controller = TextEditingController();

  TextEditingController pannumberlabelController = TextEditingController();

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
                title: AppbarSubtitle4(text: "KYC Update _ Pan"),
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
                    padding: EdgeInsets.symmetric(horizontal: 52.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextFormField(
                              controller: group163Controller,
                              suffix: SizedBox(
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgFrame8018)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 225.v),
                              borderDecoration: TextFormFieldStyleHelper.custom,
                              filled: false),
                          CustomElevatedButton(
                              text: "Browse from Storage",
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 69.v, right: 3.h)),
                          CustomTextFormField(
                              controller: pannumberlabelController,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 69.v, right: 3.h),
                              hintText: "Pan Number",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number),
                          CustomElevatedButton(
                            text: "Submit",
                            margin: EdgeInsets.fromLTRB(3.h, 69.v, 3.h, 4.v),
                            onTap: () {
                              onTapkyccon(context);
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

  onTapkyccon(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.kycConfirmationSuccessfulTransferScreen);
  }
}
