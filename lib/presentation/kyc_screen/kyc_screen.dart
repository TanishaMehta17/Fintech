import 'package:flutter/material.dart';import 'package:tanisha_s_application14/core/app_export.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class KycScreen extends StatelessWidget {KycScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 77.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarSubtitle2(text: "KYC "), actions: [AppbarImage1(svgPath: ImageConstant.imgCheckmark, margin: EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))]), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 55.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgMail, height: 100.adaptSize, width: 100.adaptSize), SizedBox(height: 16.v), Text("KYC Update ", style: CustomTextStyles.titleLargeBluegray90022), SizedBox(height: 75.v), CustomElevatedButton(text: "KYC Update _ Pan", onTap: () {onTapKycupdatepan(context);}), SizedBox(height: 17.v), CustomElevatedButton(text: "KYC Update _ Voter ID", onTap: () {onTapKycupdate(context);}), SizedBox(height: 17.v), CustomElevatedButton(text: "KYC Update _ Driving Licence", onTap: () {onTapKycupdate1(context);}), SizedBox(height: 17.v), CustomElevatedButton(text: "KYC Update _ Aadhar  Address", onTap: () {onTapKycupdate2(context);}), SizedBox(height: 17.v), CustomElevatedButton(text: "KYC Update _ Phone No.", onTap: () {onTapKycupdate3(context);}), SizedBox(height: 4.v)])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleftone(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the kycUpgatepanScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycUpgatepanScreen.
onTapKycupdatepan(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycUpgatepanScreen); } 
/// Navigates to the kycUpdateVoteridScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycUpdateVoteridScreen.
onTapKycupdate(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycUpdateVoteridScreen); } 
/// Navigates to the kycUpdateDrivinfLicenceScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycUpdateDrivinfLicenceScreen.
onTapKycupdate1(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycUpdateDrivinfLicenceScreen); } 
/// Navigates to the kycUpdateAadharScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycUpdateAadharScreen.
onTapKycupdate2(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycUpdateAadharScreen); } 
/// Navigates to the kycUpdatePhoneNoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the kycUpdatePhoneNoScreen.
onTapKycupdate3(BuildContext context) { Navigator.pushNamed(context, AppRoutes.kycUpdatePhoneNoScreen); } 
 }
