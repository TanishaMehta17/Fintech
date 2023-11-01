import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class BirthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen
    extends StatelessWidget {
  BirthdayGiftGiftCardConfirmationSuccessfulTransferOneScreen({Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 76.h,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgProfile,
                    margin: EdgeInsets.only(left: 29.h, top: 5.v, bottom: 5.v)),
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
                      SizedBox(height: 17.v),
                      Text("Your money has been transferred successfully",
                          style: CustomTextStyles.titleMediumGray50001_3),
                      SizedBox(height: 72.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage160,
                          height: 302.v,
                          width: 367.h),
                      CustomElevatedButton(
                          text: "View Receipt",
                          margin: EdgeInsets.fromLTRB(26.h, 72.v, 25.h, 2.v),
                          onTap: () {
                           // onTapViewreceipt(context);
                           showModalBottomSheet(context: context, builder: (BuildContext context){
                            return SizedBox(
                               width: double.maxFinite,
          child: Column(
            children: [
              Spacer(),
              _buildTransactionsStatusPaid(context),
            ],
          ),
                            );
                           });
                          })
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the birthdayGiftGiftCardConfirmationSuccessfulTransferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the birthdayGiftGiftCardConfirmationSuccessfulTransferScreen.
  onTapViewreceipt(BuildContext context) {
    Navigator.pushNamed(context,
        AppRoutes.birthdayGiftGiftCardConfirmationSuccessfulTransferScreen);
  }
}
Widget _buildTransactionsStatusPaid(BuildContext context) {
    return SizedBox(
      height: 425.v,
      width: double.maxFinite,
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 113.h),
                      child: Text(
                        "David Miller",
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 144.h),
                      child: Text(
                        "1******2135",
                        style: CustomTextStyles.titleMediumTealA7000116,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  CustomElevatedButton(
                    height: 38.v,
                    width: 249.h,
                    text: "Transactions Status: Paid ",
                    buttonStyle: CustomButtonStyles.outlineBlack,
                    buttonTextStyle: CustomTextStyles.titleMediumTealA7000116,
                  ),
                  SizedBox(height: 23.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "150.00",
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
                  _buildTransferFee(
                    context,
                    transferFeeText: "Card Type",
                    priceText: "Debit Card",
                  ),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 16.v),
                  _buildTransferFee(
                    context,
                    transferFeeText: "Transfer Fee",
                    priceText: "0.00INR",
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse175,
            height: 75.adaptSize,
            width: 75.adaptSize,
            radius: BorderRadius.circular(
              37.h,
            ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTransferFee(
    BuildContext context, {
    required String transferFeeText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            transferFeeText,
            style: CustomTextStyles.titleMediumGray50001.copyWith(
              color: appTheme.gray50001,
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "0.00",
                style: theme.textTheme.bodyLarge,
              ),
              TextSpan(
                text: "INR",
                style: CustomTextStyles.labelSmall_4,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }

