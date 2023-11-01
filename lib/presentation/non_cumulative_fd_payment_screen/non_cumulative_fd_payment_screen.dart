import '../non_cumulative_fd_payment_screen/widgets/chipviewgroup68_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class NonCumulativeFdPaymentScreen extends StatelessWidget {
  NonCumulativeFdPaymentScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Payment Plan"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 20.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 55,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFF8C74E).withOpacity(0.15),
                        ),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgTrash,
                            height: 34.v,
                            width: 32.h),
                      ),
                      SizedBox(height: 12.v),
                      Text("Non-cumulative FD",
                          style: CustomTextStyles.titleLargeBluegray900_1),
                      Container(
                          width: 335.h,
                          margin: EdgeInsets.only(
                              left: 11.h, top: 23.v, right: 21.h),
                          child: Text(
                              "Paid on a monthly, quarterly, half-yearly, or yearly basis\nRegular income flow throughout the tenure\nthe interest in paid out, there is no reinvestment option her\nFor Retirees, housewives, and freelancers",
                              maxLines: 8,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .titleLargeSecondaryContainerRegular_1
                                  .copyWith(height: 1.47))),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Duration",
                              style:
                                  CustomTextStyles.titleMediumBluegray90019)),
                      SizedBox(height: 11.v),
                      Wrap(
                          runSpacing: 15.v,
                          spacing: 15.h,
                          children: List<Widget>.generate(
                              12, (index) => Chipviewgroup68ItemWidget())),
                      SizedBox(height: 26.v),
                      Text("All terms and Conditions Are Applied",
                          style: CustomTextStyles.bodyLargePrimary_1),
                      CustomElevatedButton(
                        text: "Continue",
                        margin: EdgeInsets.fromLTRB(26.h, 11.v, 26.h, 4.v),
                        onTap: () {
                          onTapncumpay(context);
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

  onTapncumpay(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fdPaymentScreen);
  }
}
