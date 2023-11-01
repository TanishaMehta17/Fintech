import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ListnormalfdtexItemWidget extends StatelessWidget {
  ListnormalfdtexItemWidget({
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
        horizontal: 12.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 11.v,
            ),
            child: Text(
              "Normal FD",
              style: CustomTextStyles.titleLargeBluegray900_1,
            ),
          ),
          CustomElevatedButton(
            height: 32.v,
            width: 82.h,
            text: "Apply",
            margin: EdgeInsets.only(
              left: 84.h,
              bottom: 5.v,
            ),
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
