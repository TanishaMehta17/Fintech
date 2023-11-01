import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

class PersonToPersonConfirmationSuccessfulTransferReciptScreen
    extends StatelessWidget {
  PersonToPersonConfirmationSuccessfulTransferReciptScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController group6582Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(),
              SizedBox(
                height: 421.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.h,
                          vertical: 45.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.customBorderTL20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 35.v),
                            Text(
                              "Jonathan",
                              style: theme.textTheme.headlineMedium,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "1******6103",
                              style: CustomTextStyles.titleMediumGray5000116,
                            ),
                            SizedBox(height: 16.v),
                            CustomTextFormField(
                              width: 249.h,
                              controller: group6582Controller,
                              hintText: "Transactions Status: Sent",
                              hintStyle: CustomTextStyles.titleMediumTealA70001,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 28.h,
                                vertical: 9.v,
                              ),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineBlackTL10,
                              fillColor: appTheme.tealA70002,
                            ),
                            SizedBox(height: 16.v),
                            Align(
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "250.00",
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
                            SizedBox(height: 16.v),
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
                                  style: CustomTextStyles.titleMediumGray700,
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
                                Text(
                                  "Transfer Fee",
                                  style:
                                      CustomTextStyles.titleMediumGray50001_1,
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "0.00",
                                        style:
                                            CustomTextStyles.bodyLargeGray70018,
                                      ),
                                      TextSpan(
                                        text: "INR",
                                        style:
                                            CustomTextStyles.bodySmallGray700,
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
                      imagePath: ImageConstant.imgEllipse1754,
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
