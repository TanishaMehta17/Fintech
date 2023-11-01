import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewimpsItemWidget extends StatelessWidget {
  const ChipviewimpsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 18.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "IMPS",
        style: TextStyle(
          color: theme.colorScheme.secondaryContainer,
          fontSize: 18.fSize,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.pink200,
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
