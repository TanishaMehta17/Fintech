import 'package:flutter/material.dart';import 'package:tanisha_s_application14/core/app_export.dart';class SetFingerprintScanningScreen extends StatelessWidget {const SetFingerprintScanningScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.blueGray900, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 86.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.symmetric(horizontal: 43.h), child: Column(children: [Text("Scanning..", style: CustomTextStyles.headlineLargeWhiteA700), Container(width: 312.h, margin: EdgeInsets.only(left: 14.h, top: 16.v, right: 14.h), child: Text("Once your scanning is complete, you will be able to sign in by using fingerprint", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumWhiteA700_1.copyWith(height: 1.40))), SizedBox(height: 525.v), CustomImageView(svgPath: ImageConstant.imgFingerprintErrorcontainer, height: 61.v, width: 53.h, onTap: () {onTapImgFingerprintone(context);}), Container(height: 342.adaptSize, width: 342.adaptSize, decoration: BoxDecoration(color: appTheme.whiteA700.withOpacity(0.03), borderRadius: BorderRadius.circular(171.h)))]))))])))); } 
/// Navigates to the loginScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the loginScreen.
onTapImgFingerprintone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginScreen); } 
 }
