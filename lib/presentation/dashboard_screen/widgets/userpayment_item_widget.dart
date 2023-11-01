import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class UserpaymentItemWidget extends StatelessWidget {
  const UserpaymentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBluegray500111.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgNetflix1,
            height: 51.adaptSize,
            width: 51.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Netflix",
                  style: CustomTextStyles.titleMediumBluegray90016,
                ),
                SizedBox(height: 11.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Next Payment:",
                        style: CustomTextStyles.titleSmallGray50001,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "12/04",
                        style: CustomTextStyles.titleSmallPrimary14_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 88.h,
              top: 12.v,
              bottom: 13.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "1.00",
                    style: CustomTextStyles.titleLargeBluegray900,
                  ),
                  TextSpan(
                    text: "INR",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
