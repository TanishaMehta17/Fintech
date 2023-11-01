import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class UsertransactionItemWidget extends StatelessWidget {
  UsertransactionItemWidget({
    Key? key,
    this.onTapUsertransaction,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUsertransaction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUsertransaction?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 22.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgDropbox1,
              height: 51.adaptSize,
              width: 51.adaptSize,
              margin: EdgeInsets.only(top: 2.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 11.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dropbox",
                    style: CustomTextStyles.titleSmallBluegray900,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "3 Days Ago",
                    style: CustomTextStyles.labelLargeGray50001,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 14.v,
                bottom: 13.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "10.00",
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
      ),
    );
  }
}
