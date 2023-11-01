import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PayBillConfigrationElectricityScreen extends StatelessWidget {
  PayBillConfigrationElectricityScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 76.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 29.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "Confirmation", margin: EdgeInsets.only(left: 70.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Congratulations!",
                          style: theme.textTheme.headlineLarge),
                      Container(
                          width: 299.h,
                          margin: EdgeInsets.only(
                              left: 33.h, top: 12.v, right: 34.h),
                          child: Text(
                              "Your electricity bill payment has been paid successfuly",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumGray50001_3
                                  .copyWith(height: 1.47))),
                      SizedBox(height: 65.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage160,
                          height: 302.v,
                          width: 367.h),
                      CustomElevatedButton(
                          text: "View Receipt",
                          margin: EdgeInsets.only(
                              left: 26.h, top: 72.v, right: 25.h),
                          onTap: () {
                           // onTapViewreceipt(context);
                           showModalBottomSheet(context: context, builder: (BuildContext context){
                            return SizedBox(
                              width: double.maxFinite,
          child: Column(
            children: [
               Padding(
                 padding: const EdgeInsets.only(top:8.0),
                 child: Column(
                      children: [
                        Container(
                          height: 79.adaptSize,
                          width: 79.adaptSize,
                          padding: EdgeInsets.all(23.h),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder39,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVolume,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ),
                        _buildElectricityBillSection(context),
                      ],
                    ),
               ),
              
            ],
          ),
                            );
                           });
                          })
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

  /// Navigates to the viewElectricalReceiptScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the viewElectricalReceiptScreen.
  onTapViewreceipt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.viewElectricalReceiptScreen);
  }
}
 /// Section Widget
  Widget _buildElectricityBillSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 35.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 107.h),
              child: Text(
                "Electricity Bill",
                style: theme.textTheme.headlineMedium,
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            width: 249.h,
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Transactions Status:",
                    style: CustomTextStyles.titleMediumTealA7000116,
                  ),
                  TextSpan(
                    text: " Paid ",
                    style: CustomTextStyles.titleMediumTealA7000116,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 23.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "350.00",
                  style: CustomTextStyles.displaySmallRegular,
                ),
                TextSpan(
                  text: "INR",
                  style: CustomTextStyles.titleLargeGray50001,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 26.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bill Number",
                style: CustomTextStyles.titleMediumGray50001,
              ),
              Text(
                "12569874564",
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Divider(),
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date",
                style: CustomTextStyles.titleMediumGray5000116,
              ),
              Text(
                "March 23. 2021",
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
          SizedBox(height: 65.v),
        ],
      ),
    );
  }
