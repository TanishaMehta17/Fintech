import '../notification_screen/widgets/sectionlisttoda_item_widget.dart';import 'package:flutter/material.dart';import 'package:grouped_list/grouped_list.dart';import 'package:tanisha_s_application14/core/app_export.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class NotificationScreen extends StatelessWidget {NotificationScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

List sectionlisttodaItemList = [{'id' : 1, 'groupBy' : "Today"}, {'id' : 2, 'groupBy' : "Today"}, {'id' : 3, 'groupBy' : "This Week"}, {'id' : 4, 'groupBy' : "This Week"}, {'id' : 5, 'groupBy' : "This Week"}, {'id' : 6, 'groupBy' : "This Week"}];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 78.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarSubtitle2(text: "Notifications"), actions: [AppbarImage1(imagePath: ImageConstant.imgProfileIndigoA20001, margin: EdgeInsets.fromLTRB(27.h, 4.v, 27.h, 6.v), onTap: () {onTapProfileone(context);})]), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 36.v), Expanded(child: SingleChildScrollView(child: Column(children: [GroupedListView<dynamic, String>(shrinkWrap: true, stickyHeaderBackgroundColor: Colors.transparent, elements: sectionlisttodaItemList, groupBy: (element) => element['groupBy'], sort: false, groupSeparatorBuilder: (String value) {return Padding(padding: EdgeInsets.only(top: 64.v, bottom: 29.v), child: Text(value, style: CustomTextStyles.titleLargeBluegray900_4.copyWith(color: appTheme.blueGray900)));}, itemBuilder: (context, model) {return SectionlisttodaItemWidget();}, separator: SizedBox(height: 20.v)), SizedBox(height: 26.v), Opacity(opacity: 0.3, child: Divider(color: appTheme.pink200.withOpacity(0.46))), Padding(padding: EdgeInsets.only(left: 32.h, top: 24.v, right: 32.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse183, height: 62.adaptSize, width: 62.adaptSize, radius: BorderRadius.circular(31.h)), Container(width: 213.h, margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 6.v), child: RichText(text: TextSpan(children: [TextSpan(text: "Avian Rizky", style: CustomTextStyles.titleSmallGray700_1), TextSpan(text: " request a payment\nof ", style: CustomTextStyles.bodyMediumGray700.copyWith(height: 1.40)), TextSpan(text: "369.00", style: CustomTextStyles.titleSmallGray700_1)]), textAlign: TextAlign.left)), CustomElevatedButton(height: 30.v, width: 61.h, text: "Pay", margin: EdgeInsets.only(left: 9.h, top: 16.v, bottom: 15.v), buttonStyle: CustomButtonStyles.fillGrayTL5, buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700)]))])))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleftone(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the profileScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the profileScreen.
onTapProfileone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
 }
