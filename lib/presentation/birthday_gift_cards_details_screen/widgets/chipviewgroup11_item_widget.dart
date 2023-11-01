import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewgroup11ItemWidget extends StatelessWidget {
  const Chipviewgroup11ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "100",
        style: TextStyle(
          color: theme.colorScheme.secondaryContainer,
          fontSize: 22.fSize,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray50001.withOpacity(0.15),
      selectedColor: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          7.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
