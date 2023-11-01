import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class GiftCardsOneItemWidget extends StatelessWidget {
  const GiftCardsOneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 351.v,
      width: 368.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 351.v,
              width: 368.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.gray50001.withOpacity(0.2),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      1,
                      5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle14671,
                  height: 221.v,
                  width: 368.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(10.h),
                  ),
                ),
                SizedBox(height: 12.v),
                Text(
                  "Eid Gift",
                  style: CustomTextStyles.titleLargeBluegray900_1,
                ),
                SizedBox(height: 12.v),
                Text(
                  "Send Eidi gift to your loved ones",
                  style: theme.textTheme.bodyMedium,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 31.h,
                    top: 9.v,
                    right: 31.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 5.v,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Get",
                                style: CustomTextStyles.titleMediumBluegray900,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "10%",
                                style: CustomTextStyles.titleLargePrimary_1,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "Cashback",
                                style: CustomTextStyles.titleMediumBluegray900,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      CustomElevatedButton(
                        height: 32.v,
                        width: 82.h,
                        text: "Send",
                        buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumWhiteA70016,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
