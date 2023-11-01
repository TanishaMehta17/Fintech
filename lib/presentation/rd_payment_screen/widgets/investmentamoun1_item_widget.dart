import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Investmentamoun1ItemWidget extends StatelessWidget {
  const Investmentamoun1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Investment \nAmount",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.titleLargeGray700.copyWith(
            height: 1.47,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 69.h,
            top: 2.v,
            bottom: 33.v,
          ),
          child: Text(
            "xxxxxxxx",
            style: CustomTextStyles.titleLargeGray700,
          ),
        ),
      ],
    );
  }
}
