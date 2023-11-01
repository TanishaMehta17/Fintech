import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Userpayment1ItemWidget extends StatelessWidget {
  const Userpayment1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 21.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.outlineBluegray50011.copyWith(
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
                left: 17.h,
                top: 7.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Netflix",
                    style: CustomTextStyles.titleSmallGray700,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "Next Payment: Tuesday",
                    style: CustomTextStyles.labelLargeBluegray200,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 46.h,
                top: 12.v,
                bottom: 13.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "",
                      style: CustomTextStyles.titleLargeGray700_1,
                    ),
                    TextSpan(
                      text: "1.00",
                      style: CustomTextStyles.titleLargeGray700_1,
                    ),
                    TextSpan(
                      text: "USD",
                      style: CustomTextStyles.labelSmallGray700,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
