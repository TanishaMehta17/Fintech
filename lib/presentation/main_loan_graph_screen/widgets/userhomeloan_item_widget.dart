import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserhomeloanItemWidget extends StatelessWidget {
  UserhomeloanItemWidget({
    Key? key,
    this.onTapApplyButton,
  }) : super(
          key: key,
        );

  VoidCallback? onTapApplyButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 49.v,
            width: 50.h,
            margin: EdgeInsets.only(top: 2.v),
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillTealA,
            child: CustomImageView(
              svgPath: ImageConstant.imgHome,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "Home Loan",
                    style: CustomTextStyles.titleLargeBluegray900_1,
                  ),
                ),
                SizedBox(height: 3.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Amount:",
                        style: CustomTextStyles.bodyMedium14,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "12000.00",
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                      TextSpan(
                        text: "INR",
                        style: CustomTextStyles.arialBluegray900,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 32.v,
            width: 82.h,
            text: "Apply",
            margin: EdgeInsets.symmetric(vertical: 9.v),
            buttonStyle: CustomButtonStyles.fillPrimaryTL7,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA70016,
            onTap: () {
              onTapApplyButton?.call();
            },
          ),
        ],
      ),
    );
  }
}
