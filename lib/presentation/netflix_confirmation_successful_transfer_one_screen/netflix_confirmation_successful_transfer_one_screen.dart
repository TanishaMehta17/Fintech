import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

class NetflixConfirmationSuccessfulTransferOneScreen extends StatelessWidget {
  const NetflixConfirmationSuccessfulTransferOneScreen({Key? key})
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
              CustomImageView(
                imagePath: ImageConstant.imgNetflix1,
                height: 75.adaptSize,
                width: 75.adaptSize,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 29.h,
                  vertical: 53.v,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 7.v),
                    Text(
                      "Netflix",
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "2******6125",
                      style: CustomTextStyles.titleMedium16_1,
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
                    ),
                    SizedBox(height: 30.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "1.00",
                            style: CustomTextStyles.displaySmallRegular_1,
                          ),
                          TextSpan(
                            text: "INR",
                            style: CustomTextStyles
                                .titleLargeSecondaryContainerRegular_2,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 17.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "Transfer fee",
                            style: CustomTextStyles.titleMediumGray50001_1,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "0.00",
                                style: CustomTextStyles.bodyLargeBluegray90018,
                              ),
                              TextSpan(
                                text: "INR",
                                style: CustomTextStyles.bodySmall_3,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(height: 17.v),
                    Divider(
                      color: appTheme.blueGray50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 18.v,
                        right: 29.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "Due Date",
                              style: CustomTextStyles.titleMediumGray50001_1,
                            ),
                          ),
                          Text(
                            "March 21,2021",
                            style: CustomTextStyles.titleMediumBluegray900_5,
                          ),
                        ],
                      ),
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
