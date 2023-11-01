import 'package:flutter/material.dart';import 'package:tanisha_s_application14/core/app_export.dart';class SetFingerprintScreen extends StatelessWidget {const SetFingerprintScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.blueGray900, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 86.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.symmetric(horizontal: 43.h), child: Column(children: [Text("Fingerprint", style: CustomTextStyles.headlineLargeWhiteA700), SizedBox(height: 18.v), SizedBox(width: 227.h, child: Text("Place your finger in fingerprint\nsensor until the icon completely", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumWhiteA700_1.copyWith(height: 1.40))), SizedBox(height: 523.v), CustomImageView(svgPath: ImageConstant.imgFingerprint, height: 61.v, width: 53.h, onTap: () {onTapImgFingerprinttwo(context);}), Container(height: 342.adaptSize, width: 342.adaptSize, decoration: BoxDecoration(color: appTheme.whiteA700.withOpacity(0.03), borderRadius: BorderRadius.circular(171.h)))]))))])))); } 
/// Navigates to the setFingerprintScanningScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the setFingerprintScanningScreen.
onTapImgFingerprinttwo(BuildContext context) { Navigator.pushNamed(context, AppRoutes.setFingerprintScanningScreen); } 
 }
