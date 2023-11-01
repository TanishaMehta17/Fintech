import 'package:flutter/material.dart';import 'package:tanisha_s_application14/core/app_export.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class HeadsFoundationReciptScreen extends StatelessWidget {HeadsFoundationReciptScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 77.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarSubtitle2(text: "Confirmation"), actions: [AppbarImage1(svgPath: ImageConstant.imgCheckmark, margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 4.v))]), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 30.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Donate Successfully!", style: theme.textTheme.headlineLarge), Container(width: 287.h, margin: EdgeInsets.only(left: 39.h, top: 12.v, right: 40.h), child: Text("Your money has been transferred successfully", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumPink200.copyWith(height: 1.47))), SizedBox(height: 69.v), CustomImageView(imagePath: ImageConstant.imgImage160, height: 302.v, width: 367.h), CustomElevatedButton(text: "Done", margin: EdgeInsets.only(left: 25.h, top: 72.v, right: 25.h))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleftone(BuildContext context) { Navigator.pop(context); } 
 }
