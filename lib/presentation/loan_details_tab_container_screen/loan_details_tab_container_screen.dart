import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/loan_details_page/loan_details_page.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';

class LoanDetailsTabContainerScreen extends StatefulWidget {
  const LoanDetailsTabContainerScreen({Key? key}) : super(key: key);

  @override
  LoanDetailsTabContainerScreenState createState() =>
      LoanDetailsTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class LoanDetailsTabContainerScreenState
    extends State<LoanDetailsTabContainerScreen> with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "Payment Plan", margin: EdgeInsets.only(left: 67.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      margin:
                          EdgeInsets.only(left: 30.h, top: 24.v, right: 30.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 20.v),
                      decoration: AppDecoration.outlineBluegray500111.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomIconButton(
                                height: 49.v,
                                width: 50.h,
                                padding: EdgeInsets.all(13.h),
                                decoration: IconButtonStyleHelper.fillTealA,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgHome)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 25.h, top: 2.v, bottom: 4.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 7.h),
                                          child: Text("Home Loan",
                                              style: CustomTextStyles
                                                  .titleLargeBluegray900_1)),
                                      SizedBox(height: 3.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Amount:",
                                                style: CustomTextStyles
                                                    .bodyMedium14),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "12000.00",
                                                style: CustomTextStyles
                                                    .bodyMediumPrimary),
                                            TextSpan(
                                                text: "INR",
                                                style: CustomTextStyles
                                                    .arialBluegray900)
                                          ]),
                                          textAlign: TextAlign.left)
                                    ]))
                          ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h, top: 29.v),
                          child: Text("Duration",
                              style:
                                  CustomTextStyles.titleMediumBluegray90019))),
                  SizedBox(height: 15.v),
                  Container(
                      height: 48.v,
                      width: 367.h,
                      child: TabBar(
                          controller: tabviewController,
                          labelPadding: EdgeInsets.zero,
                          labelColor: theme.colorScheme.primary,
                          labelStyle: TextStyle(
                              fontSize: 18.fSize,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.w700),
                          unselectedLabelColor:
                              theme.colorScheme.secondaryContainer,
                          unselectedLabelStyle: TextStyle(
                              fontSize: 18.fSize,
                              fontFamily: 'Arial',
                              fontWeight: FontWeight.w700),
                          indicator: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(7.h),
                              border: Border.all(
                                  color: Colors.redAccent, width: 1.h)),
                          tabs: [
                            Tab(child: Text("6 Months")),
                            Tab(child: Text("8 Months")),
                            Tab(child: Text("10 Months"))
                          ])),
                  SizedBox(
                      height: 525.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            LoanDetailsPage(),
                            LoanDetailsPage(),
                            LoanDetailsPage()
                          ]))
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
}
