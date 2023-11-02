import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonToPersonConfirmationSuccessfulTransferScreen
    extends StatelessWidget {
  var amt, name, accNo;
  PersonToPersonConfirmationSuccessfulTransferScreen(
      this.name, this.accNo, this.amt,
      {Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 86.h,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgProfile,
                    margin: EdgeInsets.only(left: 39.h, top: 5.v, bottom: 5.v)),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 19.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 31.v),
                child: Column(children: [
                  SizedBox(height: 21.v),
                  Text("Transfer Successful!",
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 17.v),
                  Text("Your money has been tranfered successfuly",
                      style: CustomTextStyles.titleMediumBluegray200),
                  SizedBox(height: 101.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage160,
                      height: 302.v,
                      width: 367.h,
                      alignment: Alignment.centerRight),
                  Spacer(),
                  CustomElevatedButton(
                      text: "View Receipt",
                      margin: EdgeInsets.only(left: 45.h, right: 25.h),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: double.maxFinite,
                                child: Column(
                                  children: [
                                    //SizedBox(height: 463.v),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse17575x75,
                                            height: 125,
                                            width: 125,
                                            radius: BorderRadius.circular(
                                              37.h,
                                            ),
                                          ),
                                          _buildPersonToPersonFrame(
                                              context, name, accNo, amt),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      alignment: Alignment.centerRight)
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the personToPersonConfirmationSuccessfulTransferReciptScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the personToPersonConfirmationSuccessfulTransferReciptScreen.
  // onTapViewreceipt(BuildContext context) {
  //   Navigator.pushNamed(context,
  //       AppRoutes.personToPersonConfirmationSuccessfulTransferReciptScreen);
  // }
}

/// Section Widget
Widget _buildPersonToPersonFrame(BuildContext context, name, accNo, amt) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 30.h,
      vertical: 45.v,
    ),
    decoration: AppDecoration.fillWhiteA.copyWith(
      borderRadius: BorderRadiusStyle.customBorderTL20,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        //SizedBox(height: 15.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 131.h),
            child: Text(
              "$name",
              style: theme.textTheme.headlineMedium,
            ),
          ),
        ),
        SizedBox(height: 6.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 143.h),
            child: Text(
              "$accNo",
              style: CustomTextStyles.titleMediumGray5000116,
            ),
          ),
        ),
        SizedBox(height: 16.v),

        Container(
            width: 249.h,
            height: 35.v,
            decoration: BoxDecoration(
                color: Color(0XFF1CCD9D).withOpacity(0.15),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Transactions Status: Sent',
                style: TextStyle(color: Color(0XFF1CCD9D)),
                textAlign: TextAlign.center,
              ),
            )),

        SizedBox(height: 16.v),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "$amt",
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
        SizedBox(height: 16.v),
        _buildTransferFeeRow(
          context,
          transferFee: "Card Type",
          price: "Debit Card",
        ),
        SizedBox(height: 16.v),
        Divider(),
        SizedBox(height: 16.v),
        _buildTransferFeeRow(
          context,
          transferFee: "Transfer Fee",
          price: "0.00INR",
        ),
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
        style: CustomTextStyles.titleMediumGray50001.copyWith(
          color: appTheme.gray50001,
        ),
      ),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "0.00",
              style: CustomTextStyles.bodyLargeBluegray90016_1,
            ),
            TextSpan(
              text: "INR",
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
        textAlign: TextAlign.left,
      ),
    ],
  );
}
