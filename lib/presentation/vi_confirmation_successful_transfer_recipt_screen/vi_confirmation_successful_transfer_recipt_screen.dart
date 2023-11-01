import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

class ViConfirmationSuccessfulTransferReciptScreen extends StatelessWidget {
  const ViConfirmationSuccessfulTransferReciptScreen({Key? key})
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
              SizedBox(height: 497.v),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 429.v,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "VI",
                                  style: theme.textTheme.headlineMedium,
                                ),
                                SizedBox(height: 8.v),
                                Text(
                                  "+1 123 3698 789",
                                  style: CustomTextStyles.titleMedium16_1,
                                ),
                                SizedBox(height: 13.v),
                                Container(
                                  width: 249.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24.h,
                                    vertical: 9.v,
                                  ),
                                  decoration: AppDecoration
                                      .outlineBluegray500112
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Transactions Status:",
                                          style: CustomTextStyles
                                              .titleMediumTealA7000116,
                                        ),
                                        TextSpan(
                                          text: " Paid ",
                                          style: CustomTextStyles
                                              .titleMediumTealA7000116,
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
                                        text: "50.00",
                                        style: theme.textTheme.displaySmall,
                                      ),
                                      TextSpan(
                                        text: "INR",
                                        style:
                                            CustomTextStyles.titleLargePink200,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 25.v),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Network",
                                      style:
                                          CustomTextStyles.titleMediumPink200_1,
                                    ),
                                    Text(
                                      "VI",
                                      style: CustomTextStyles
                                          .titleMediumBluegray900_4,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 18.v),
                                Divider(
                                  color: appTheme.blueGray50,
                                ),
                                SizedBox(height: 17.v),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Transfer Fee",
                                      style:
                                          CustomTextStyles.titleMediumPink200_1,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "0.00",
                                            style: CustomTextStyles
                                                .titleMediumBluegray900_2,
                                          ),
                                          TextSpan(
                                            text: "INR",
                                            style:
                                                CustomTextStyles.labelSmall_4,
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
                          imagePath: ImageConstant.imgDownload375x75,
                          height: 75.adaptSize,
                          width: 75.adaptSize,
                          radius: BorderRadius.circular(
                            35.h,
                          ),
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
