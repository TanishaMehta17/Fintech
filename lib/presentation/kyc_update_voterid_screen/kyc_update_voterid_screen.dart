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
class KycUpdateVoteridScreen extends StatelessWidget {
  KycUpdateVoteridScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController group183Controller = TextEditingController();

  TextEditingController dateController = TextEditingController();

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
                title: AppbarSubtitle4(text: "KYC Update _ Voter ID"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin: EdgeInsets.fromLTRB(27.h, 4.v, 29.h, 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 52.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextFormField(
                          controller: group183Controller,
                          suffix: SizedBox(
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFrame8018)),
                          suffixConstraints: BoxConstraints(maxHeight: 225.v),
                          borderDecoration: TextFormFieldStyleHelper.custom,
                          filled: false),
                      CustomElevatedButton(
                          text: "Browse from Storage",
                          margin: EdgeInsets.only(
                              left: 3.h, top: 69.v, right: 3.h)),
                      CustomTextFormField(
                          controller: dateController,
                          margin:
                              EdgeInsets.only(left: 3.h, top: 69.v, right: 3.h),
                          hintText: "KYC Update _ Voter ID",
                          textInputAction: TextInputAction.done),
                      CustomElevatedButton(
                        text: "Submit",
                        margin: EdgeInsets.fromLTRB(3.h, 69.v, 3.h, 4.v),
                        onTap: () {
                          onTapkyupcon(context);
                        },
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

  onTapkyupcon(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.kycConfirmationSuccessfulTransferScreen);
  }
}
