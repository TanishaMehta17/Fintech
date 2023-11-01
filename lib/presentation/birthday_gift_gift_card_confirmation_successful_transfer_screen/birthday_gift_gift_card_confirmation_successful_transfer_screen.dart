import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

class BirthdayGiftGiftCardConfirmationSuccessfulTransferScreen
    extends StatelessWidget {
  const BirthdayGiftGiftCardConfirmationSuccessfulTransferScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(),
              SizedBox(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 6.v),
                            Text(
                              "David Miller",
                              style: theme.textTheme.headlineMedium,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "1******2135",
                              style: CustomTextStyles.titleMedium16_1,
                            ),
                            SizedBox(height: 13.v),
                            CustomElevatedButton(
                              height: 38.v,
                              width: 249.h,
                              text: "Transactions Status: Paid ",
                              buttonStyle: CustomButtonStyles.outlineBlack,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumTealA70001,
                              alignment: Alignment.center,
                            ),
                            SizedBox(height: 23.v),
                            Align(
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "150.00",
                                      style: CustomTextStyles
                                          .displaySmallRegular_1,
                                    ),
                                    TextSpan(
                                      text: "INR",
                                      style: CustomTextStyles
                                          .titleLargeGray50001Regular,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 26.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(
                                    "Card Type",
                                    style:
                                        CustomTextStyles.titleMediumGray50001_1,
                                  ),
                                ),
                                Text(
                                  "Debit Card",
                                  style:
                                      CustomTextStyles.titleMediumBluegray900_4,
                                ),
                              ],
                            ),
                            SizedBox(height: 16.v),
                            Divider(
                              color: appTheme.blueGray50,
                            ),
                            SizedBox(height: 16.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(
                                    "Transfer Fee",
                                    style:
                                        CustomTextStyles.titleMediumGray50001_1,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "0.00",
                                        style: CustomTextStyles
                                            .bodyLargeBluegray90018_1,
                                      ),
                                      TextSpan(
                                        text: "INR",
                                        style: CustomTextStyles.bodySmall_1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse1752,
                      height: 75.adaptSize,
                      width: 75.adaptSize,
                      radius: BorderRadius.circular(
                        37.h,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
