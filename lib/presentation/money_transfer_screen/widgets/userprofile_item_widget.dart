import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray500111.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 112.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse174,
            height: 51.adaptSize,
            width: 51.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 10.v,
            ),
            child: Text(
              "Dr. Kamal",
              style: CustomTextStyles.labelLargeGray5000113,
            ),
          ),
          SizedBox(height: 2.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "40.00",
                  style: CustomTextStyles.bodyLargeBluegray90016_1,
                ),
                TextSpan(
                  text: "INR",
                  style: CustomTextStyles.bodySmallGray50001,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
