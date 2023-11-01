import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

class ViewElectricalReceiptScreen extends StatelessWidget {
  const ViewElectricalReceiptScreen({Key? key})
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
                    horizontal: 100.h,
                    vertical: 17.v,
                  ),
                  decoration: AppDecoration.fillIndigoA200011.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.v),
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
                child: SizedBox(
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
                            vertical: 55.v,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.customBorderTL20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 25.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Electricity Bill",
                                  style: theme.textTheme.headlineMedium,
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Container(
                                width: 249.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30.h,
                                  vertical: 9.v,
                                ),
                                decoration: AppDecoration.outlineBlack.copyWith(
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
                                      text: "350.00",
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
                              SizedBox(height: 26.v),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Bill Number",
                                    style: CustomTextStyles.titleMedium_1,
                                  ),
                                  Text(
                                    "12569874564",
                                    style: CustomTextStyles
                                        .titleMediumBluegray900_4,
                                  ),
                                ],
                              ),
                              SizedBox(height: 17.v),
                              Divider(
                                color: appTheme.blueGray50,
                              ),
                              SizedBox(height: 17.v),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Date",
                                    style: CustomTextStyles.titleMedium_1,
                                  ),
                                  Text(
                                    "March 23. 2021",
                                    style: CustomTextStyles
                                        .titleMediumBluegray900_4,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgVolumeWhiteA700,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                      ),
                    ],
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
