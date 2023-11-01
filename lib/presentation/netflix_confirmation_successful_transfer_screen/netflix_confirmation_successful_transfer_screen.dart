import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class NetflixConfirmationSuccessfulTransferScreen extends StatelessWidget {
  NetflixConfirmationSuccessfulTransferScreen({Key? key}) : super(key: key);

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
                      Text("Transfer Successful!",
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 12.v),
                      SizedBox(
                          width: 248.h,
                          child: Text(
                              "Your payment has been transferred successfully",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumGray50001_3
                                  .copyWith(height: 1.47))),
                      SizedBox(height: 68.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage160,
                          height: 302.v,
                          width: 367.h),
                      CustomElevatedButton(
                        text: "View Receipt",
                        margin: EdgeInsets.fromLTRB(26.h, 72.v, 25.h, 2.v),
                        onTap: () {
                         // onTapview(context);

                         showModalBottomSheet(context: context, builder: (BuildContext context){
                          return SizedBox(
                                width: double.maxFinite,
          child: Column(
            children: [
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgNetflix1,
                height: 75.adaptSize,
                width: 75.adaptSize,
              ),
              _buildNetflixConfirmationFrame(context),
            ],
          ),
                          );
                         });
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

  onTapview(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.netflixConfirmationSuccessfulTransferOneScreen);
  }
}
/// Section Widget
  Widget _buildNetflixConfirmationFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 53.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 143.h),
            child: Text(
              "Netflix",
              style: theme.textTheme.headlineMedium,
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 142.h),
            child: Text(
              "2******6125",
              style: CustomTextStyles.titleMediumGray5000116,
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.center,
            child: Container(
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
                      style: CustomTextStyles.titleMediumTealA7000116_1,
                    ),
                    TextSpan(
                      text: " Paid ",
                      style: CustomTextStyles.titleMediumTealA7000116_1,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(left: 121.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "1.00",
                    style: CustomTextStyles.displaySmallRegular,
                  ),
                  TextSpan(
                    text: "INR",
                    style: CustomTextStyles.titleLargePink200,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "Transfer fee",
                  style: CustomTextStyles.titleMediumGray50001,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "0.00",
                      style: CustomTextStyles.titleLargeBluegray900_2,
                    ),
                    TextSpan(
                      text: "INR",
                      style: CustomTextStyles.titleLargeBluegray900_2,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Divider(),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 29.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "Due Date",
                    style: CustomTextStyles.titleMediumGray50001,
                  ),
                ),
                Text(
                  "March 21,2021",
                  style: CustomTextStyles.titleMedium_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
