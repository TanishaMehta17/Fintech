import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class JioConfirmationSuccessfulTransferOneScreen extends StatelessWidget {
  JioConfirmationSuccessfulTransferOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 76.h,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgProfileIndigoA20001,
                    margin: EdgeInsets.only(left: 29.h, top: 5.v, bottom: 5.v)),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 35.v),
                child: Column(children: [
                  SizedBox(height: 16.v),
                  Text("Transfer Successful!",
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 12.v),
                  SizedBox(
                      width: 210.h,
                      child: Text(
                          "Your recharge has been transferred successfully",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumPink200
                              .copyWith(height: 1.47))),
                  SizedBox(height: 76.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage160,
                      height: 302.v,
                      width: 367.h),
                  Spacer(),
                  CustomElevatedButton(
                      text: "View Receipt",
                      margin: EdgeInsets.symmetric(horizontal: 25.h),
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
                        CustomImageView(
                          imagePath: ImageConstant.imgDownload3,
                          height: 75.adaptSize,
                          width: 75.adaptSize,
                          radius: BorderRadius.circular(
                            35.h,
                          ),
                        ),
                        _buildJioConfirmation(context),
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

  /// Navigates to the jioConfirmationSuccessfulTransferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the jioConfirmationSuccessfulTransferScreen.
  onTapViewreceipt(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.jioConfirmationSuccessfulTransferScreen);
  }
}


Widget _buildJioConfirmation(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 54.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Jio",
            style: theme.textTheme.headlineMedium,
          ),
          SizedBox(height: 8.v),
          Text(
            "+1 123 3698 789",
            style: CustomTextStyles.titleMedium16_1
            ,
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
          SizedBox(height: 25.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "",
                  style: CustomTextStyles.displaySmall34,
                ),
                TextSpan(
                  text: "50.00",
                  style: theme.textTheme.displaySmall,
                ),
                TextSpan(
                  text: "USD",
                  style: CustomTextStyles.titleLargePink200,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 24.v),
          _buildTransferFee(
            context,
            transferFeeText: "Network",
            priceText: "Jio",
          ),
          SizedBox(height: 18.v),
          Divider(),
          SizedBox(height: 17.v),
          _buildTransferFee(
            context,
            transferFeeText: "Transfer Fee",
            priceText: "0.00USD",
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
        Text(
          transferFeeText,
          style: CustomTextStyles.titleMediumPink200.copyWith(
            color: appTheme.pink200,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "",
                style: CustomTextStyles.arialBluegray900Bold,
              ),
              TextSpan(
                text: "0.00",
                style: CustomTextStyles.arialBluegray900Bold,
              ),
              TextSpan(
                text: "USD",
                style: theme.textTheme.labelSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }

