import '../logout_screen/widgets/userpayment1_item_widget.dart';import 'package:flutter/material.dart';import 'package:tanisha_s_application14/core/app_export.dart';import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';class LogoutScreen extends StatelessWidget {const LogoutScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 744.v), Expanded(child: SingleChildScrollView(child: SizedBox(height: 341.v, width: 427.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.fromLTRB(29.h, 29.v, 29.h, 43.v), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 13.v);}, itemCount: 3, itemBuilder: (context, index) {return Userpayment1ItemWidget();}))), Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 55.h, vertical: 47.v), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.customBorderTL20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(right: 41.h), child: Text("Are you sure?", style: theme.textTheme.headlineLarge)), Padding(padding: EdgeInsets.only(top: 5.v, right: 6.h), child: Text("Are you sure you want to logout?", style: CustomTextStyles.titleMediumPink200)), CustomElevatedButton(text: "Log Out", margin: EdgeInsets.only(top: 33.v, right: 1.h), onTap: () {onTapLogout(context);}), CustomElevatedButton(text: "Cancel", margin: EdgeInsets.only(top: 19.v, right: 1.h, bottom: 3.v), buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: CustomTextStyles.titleLargeSecondaryContainer_1, onTap: () {onTapCancel(context);})])))]))))])))); } 
/// Navigates to the loginScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the loginScreen.
onTapLogout(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginScreen); } 
/// Navigates to the dashboardProfileScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the dashboardProfileScreen.
onTapCancel(BuildContext context) { Navigator.pushNamed(context, AppRoutes.dashboardProfileScreen); } 
 }
