import 'package:flutter/material.dart';import 'package:tanisha_s_application14/core/app_export.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_circleimage.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_1.dart';import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class ScannerScreen extends StatelessWidget {ScannerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 63.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 6.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarSubtitle1(text: "QR Scan"), actions: [AppbarCircleimage(imagePath: ImageConstant.imgImage357, margin: EdgeInsets.fromLTRB(16.h, 3.v, 16.h, 2.v))]), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 55.h, vertical: 45.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgFrame7843, height: 311.adaptSize, width: 311.adaptSize), SizedBox(height: 50.v), Text("The QR code will be automatically  detected when you you will place the  QR code inside the frame", style: CustomTextStyles.bodyLargeGray5000118), SizedBox(height: 50.v), CustomIconButton(height: 60.adaptSize, width: 60.adaptSize, padding: EdgeInsets.all(13.h), decoration: IconButtonStyleHelper.fillGrayTL30, child: CustomImageView(svgPath: ImageConstant.imgRefresh)), SizedBox(height: 49.v), CustomElevatedButton(text: "Scan Item"), SizedBox(height: 2.v)])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleftone(BuildContext context) { Navigator.pop(context); } 
 }
