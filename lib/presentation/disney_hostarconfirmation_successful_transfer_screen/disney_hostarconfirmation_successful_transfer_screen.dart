import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class DisneyHostarconfirmationSuccessfulTransferScreen extends StatelessWidget {
  var acc;
  DisneyHostarconfirmationSuccessfulTransferScreen(this.acc, {Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 78.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 27.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Transfer Successful!",
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 12.v),
                      SizedBox(
                          width: 210.h,
                          child: Text(
                              "Your payment has been transferred successfully",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumPink200
                                  .copyWith(height: 1.47))),
                      SizedBox(height: 69.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage160,
                          height: 302.v,
                          width: 367.h),
                      CustomElevatedButton(
                          text: "View Receipt",
                          margin: EdgeInsets.fromLTRB(29.h, 72.v, 25.h, 3.v),
                          onTap: () {
                            // onTapViewreceipt(context);
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    width: double.maxFinite,
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        _buildDisneyHotstarConfirmation(
                                            context, acc),
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

  /// Navigates to the disneyHostarconfirmationSuccessfulTransferReciPtScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the disneyHostarconfirmationSuccessfulTransferReciPtScreen.
  onTapViewreceipt(BuildContext context) {
    Navigator.pushNamed(context,
        AppRoutes.disneyHostarconfirmationSuccessfulTransferReciPtScreen);
  }
}

Widget _buildDisneyHotstarConfirmation(BuildContext context, acc) {
  return SizedBox(
    height: 429.v,
    width: 427.h,
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 29.h,
              vertical: 54.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.customBorderTL20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Text(
                  "Disney + Hotstar",
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 6.v),
                Text(
                  "$acc",
                  style: CustomTextStyles.titleMedium16_1,
                ),
                SizedBox(height: 13.v),
                Container(
                  width: 249.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineBluegray500112.copyWith(
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
                SizedBox(height: 29.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "700.00",
                        style: CustomTextStyles.displaySmall34,
                      ),
                      TextSpan(
                          text: "INR",
                          style: CustomTextStyles.titleLargePink200),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transfer fee",
                      style: CustomTextStyles.titleMediumPink200,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "0.00",
                            style: theme.textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: "INR",
                            style: CustomTextStyles.labelSmall_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 18.v),
                Divider(),
                SizedBox(height: 17.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "Due Date",
                        style: CustomTextStyles.titleMediumPink200,
                      ),
                    ),
                    Text(
                      "March 21,2021",
                      style: CustomTextStyles.titleMedium_1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgDownload1,
          height: 75.adaptSize,
          width: 75.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
          alignment: Alignment.topCenter,
        ),
      ],
    ),
  );
}
