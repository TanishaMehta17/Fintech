import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class SectionlisttodaItemWidget extends StatelessWidget {
  const SectionlisttodaItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 31.h,
        top: 21.v,
        right: 86.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse183,
            height: 62.adaptSize,
            width: 62.adaptSize,
            radius: BorderRadius.circular(
              31.h,
            ),
          ),
          Expanded(
            child: Container(
              width: 230.h,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 13.v,
                bottom: 5.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "You received a payment of",
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "560.00 \n",
                      style: CustomTextStyles.titleMediumBluegray90016_2,
                    ),
                    TextSpan(
                      text: "from ",
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                    TextSpan(
                      text: "Ravi",
                      style: CustomTextStyles.bodyMediumBlack90001,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
