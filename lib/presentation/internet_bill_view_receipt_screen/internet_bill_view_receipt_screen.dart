import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

class InternetBillViewReceiptScreen extends StatelessWidget {
  const InternetBillViewReceiptScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 56.h,
                    right: 56.h,
                    bottom: 128.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 92.h,
                    vertical: 18.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Text(
                        "View Receipt",
                        style: theme.textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 29.h,
                    vertical: 56.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.customBorderTL20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 21.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Internet Bill",
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Container(
                        width: 249.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.h,
                          vertical: 9.v,
                        ),
                        decoration:
                            AppDecoration.outlineBluegray500112.copyWith(
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
                              text: "350.00",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Bill Number",
                            style: CustomTextStyles.titleMedium_1,
                          ),
                          Text(
                            "12569874564",
                            style: CustomTextStyles.titleMediumBluegray900_4,
                          ),
                        ],
                      ),
                      SizedBox(height: 18.v),
                      Divider(
                        color: appTheme.blueGray50,
                      ),
                      SizedBox(height: 16.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: CustomTextStyles.titleMedium_1,
                          ),
                          Text(
                            "March 23. 2021",
                            style: CustomTextStyles.titleMediumBluegray900_4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgQuestion,
                height: 32.v,
                width: 33.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
