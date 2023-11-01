import 'package:flutter/material.dart';import 'package:tanisha_s_application14/core/app_export.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_3.dart';import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class NeftBanksDetailsScreen extends StatelessWidget {NeftBanksDetailsScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 78.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarSubtitle3(text: "Account Details"), actions: [AppbarImage1(svgPath: ImageConstant.imgCheckmark, margin: EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))]), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("South Indian Bank ", style: theme.textTheme.titleSmall), SizedBox(height: 9.v), Text("Customer Detials", style: CustomTextStyles.titleSmallBlack90003_1), Padding(padding: EdgeInsets.only(top: 9.v, right: 17.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Name :", style: theme.textTheme.titleSmall)), Text("xxxxxxxx", style: theme.textTheme.titleSmall)])), Padding(padding: EdgeInsets.only(top: 2.v, right: 17.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Account Number:", style: theme.textTheme.titleSmall)), Text("xxxxxxxx", style: theme.textTheme.titleSmall)])), Padding(padding: EdgeInsets.only(top: 2.v, right: 17.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Bank:", style: theme.textTheme.titleSmall)), Text("xxxxxxxx", style: theme.textTheme.titleSmall)])), SizedBox(height: 76.v), Text("Amount ", style: CustomTextStyles.titleSmallBlack90003_1), SizedBox(height: 5.v), Text("xxxxxxxx", style: theme.textTheme.titleSmall), SizedBox(height: 5.v)])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleftone(BuildContext context) { Navigator.pop(context); } 
 }
