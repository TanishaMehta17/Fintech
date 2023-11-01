import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class FamilyinsuranceItemWidget extends StatelessWidget {
  FamilyinsuranceItemWidget({
    Key? key,
    this.onTapCreatePlanButto,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCreatePlanButto;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray50001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle14672,
            height: 221.v,
            width: 368.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(10.h),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              top: 23.v,
            ),
            child: Text(
              "Family Insurance",
              style: CustomTextStyles.titleLargeBluegray900_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              top: 2.v,
            ),
            child: Text(
              "Family plans cover two or more members.",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(43.h, 7.v, 22.h, 24.v),
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
                            text: "20%",
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
                    width: 102.h,
                    text: "Create Plan",
                    buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                    buttonTextStyle: CustomTextStyles.titleMediumWhiteA70016,
                    onTap: () {
                      onTapCreatePlanButto?.call();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
