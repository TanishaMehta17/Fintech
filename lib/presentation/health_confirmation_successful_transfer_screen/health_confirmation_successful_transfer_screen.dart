// import 'package:flutter/material.dart';
// import 'package:tanisha_s_application14/core/app_export.dart';
// import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
// import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
// import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
// import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
// import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
// import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// // ignore_for_file: must_be_immutable
// class HealthConfirmationSuccessfulTransferScreen extends StatelessWidget {
//   var acc;
//   HealthConfirmationSuccessfulTransferScreen(this.acc,{Key? key}) : super(key: key);

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);
//     return SafeArea(
//         child: Scaffold(
//             appBar: CustomAppBar(
//                 leadingWidth: 73.h,
//                 leading: AppbarImage(
//                     svgPath: ImageConstant.imgArrowleft,
//                     margin: EdgeInsets.only(left: 26.h, top: 4.v, bottom: 4.v),
//                     onTap: () {
//                       onTapArrowleftone(context);
//                     }),
//                 centerTitle: true,
//                 title: AppbarSubtitle2(text: "Confirmation"),
//                 actions: [
//                   AppbarImage1(
//                       svgPath: ImageConstant.imgCheckmark,
//                       margin:
//                           EdgeInsets.symmetric(horizontal: 34.h, vertical: 4.v))
//                 ]),
//             body: Container(
//                 width: double.maxFinite,
//                 padding: EdgeInsets.symmetric(horizontal: 26.h),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("Transfer Successful!",
//                           style: theme.textTheme.headlineLarge),
//                       Container(
//                           width: 287.h,
//                           margin: EdgeInsets.only(
//                               left: 39.h, top: 15.v, right: 48.h),
//                           child: Text(
//                               "Your money has been transferred successfully",
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.center,
//                               style: CustomTextStyles.titleMediumPink200
//                                   .copyWith(height: 1.47))),
//                       SizedBox(height: 69.v),
//                       CustomImageView(
//                           imagePath: ImageConstant.imgImage160,
//                           height: 302.v,
//                           width: 367.h),
//                     /  CustomElevatedButton(
//                           text: "View Receipt",
//                           margin: EdgeInsets.fromLTRB(25.h, 72.v, 33.h, 3.v),
//                           onTap: () {
//                             onTapViewreceipt(context);
//                           })
//                     ])),
//             bottomNavigationBar:
//                 CustomBottomBar(onChanged: (BottomBarEnum type) {})));
//   }

//   /// Navigates back to the previous screen.
//   ///
//   /// This function takes a [BuildContext] object as a parameter, which is used
//   /// to navigate back to the previous screen.
//   onTapArrowleftone(BuildContext context) {
//     Navigator.pop(context);
//   }

//   /// Navigates to the healthConfirmationSuccessfulTransferReciptScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the [Navigator] widget
//   /// to push the named route for the healthConfirmationSuccessfulTransferReciptScreen.
//   onTapViewreceipt(BuildContext context) {
//     Navigator.pushNamed(
//         context, AppRoutes.healthConfirmationSuccessfulTransferReciptScreen);
//   }
// }
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
// class HomeInsuranceConfirmationSuccessfulTransferScreen
//     extends StatelessWidget {
//   var acc;
//   // HomeInsuranceConfirmationSuccessfulTransferScreen(this.acc,{Key? key})
//   //     : super(key: key);

//   // GlobalKey<NavigatorState> navigatorKey = GlobalKey();
class HealthConfirmationSuccessfulTransferScreen extends StatelessWidget {
  var acc;
  HealthConfirmationSuccessfulTransferScreen(this.acc, {Key? key})
      : super(key: key);

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
                title: AppbarSubtitle2(text: "Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 30.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Transfer Successful!",
                          style: theme.textTheme.headlineLarge),
                      Container(
                          width: 287.h,
                          margin: EdgeInsets.only(
                              left: 39.h, top: 15.v, right: 40.h),
                          child: Text(
                              "Your money has been transferred successfully",
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
                          margin: EdgeInsets.fromLTRB(25.h, 72.v, 25.h, 3.v),
                          onTap: () {
                            //onTapViewreceipt(context);
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    width: double.maxFinite,
                                    child: Column(
                                      children: [
                                        // SizedBox(height: 504.v),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage160,
                                                  height: 75.adaptSize,
                                                  width: 75.adaptSize,
                                                  radius: BorderRadius.circular(
                                                    35.h,
                                                  ),
                                                ),
                                              ),
                                              _buildHomeInsuranceColumn(
                                                  context, acc),
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

  /// Navigates to the homeInssuranceConfirmationSuccessfulTransferReciptScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeInssuranceConfirmationSuccessfulTransferReciptScreen.
  // onTapViewreceipt(BuildContext context) {
  //   Navigator.pushNamed(context,
  //       AppRoutes.homeInssuranceConfirmationSuccessfulTransferReciptScreen);
  // }
}

Widget _buildHomeInsuranceColumn(BuildContext context, acc) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 30.h,
      vertical: 28.v,
    ),
    decoration: AppDecoration.fillWhiteA.copyWith(
      borderRadius: BorderRadiusStyle.customBorderTL20,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Health Insurance",
          style: CustomTextStyles.bodyLargeArapeyBluegray900,
        ),
        SizedBox(height: 15.v),
        Text(
          "$acc",
          style: CustomTextStyles.titleMediumGray70016,
        ),
        SizedBox(height: 21.v),
        Container(
          width: 249.h,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 9.v,
          ),
          // decoration: AppDecoration.fillPr.copyWith(
          //   borderRadius: BorderRadiusStyle.roundedBorder10,
          // ),
          decoration: BoxDecoration(
              color: Color(0XFF13C999).withOpacity(0.15),
              borderRadius: BorderRadius.circular(10)),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Transactions Status:",
                  style: CustomTextStyles.bodyLargeTealA70001,
                ),
                TextSpan(
                  text: " Paid ",
                  style: CustomTextStyles.bodyLargeTealA70001,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: 18.v),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "150.00",
                style: theme.textTheme.displaySmall,
              ),
              TextSpan(
                text: "INR",
                style: theme.textTheme.titleLarge,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 20.v),
        _buildTransferFeeRow(
          context,
          transferFee: "Card Type",
          price: "Debit Card",
        ),
        SizedBox(height: 17.v),
        Divider(),
        SizedBox(height: 19.v),
        _buildTransferFeeRow(
          context,
          transferFee: "Transfer Fee",
          price: "0.00INR",
        ),
        SizedBox(height: 88.v),
      ],
    ),
  );
}

/// Common widget
Widget _buildTransferFeeRow(
  BuildContext context, {
  required String transferFee,
  required String price,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        transferFee,
        style: CustomTextStyles.titleMediumPink200.copyWith(
          color: appTheme.pink200,
        ),
      ),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "0.00",
              style: CustomTextStyles.titleMedium_1,
            ),
            TextSpan(
              text: "INR",
              style: theme.textTheme.labelSmall,
            ),
          ],
        ),
        textAlign: TextAlign.left,
      ),
    ],
  );
}
