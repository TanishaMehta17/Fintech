import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewquarterItemWidget extends StatelessWidget {
  const ChipviewquarterItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 14.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Quarterly",
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: 17.fSize,
          fontFamily: 'Arial',
          fontWeight: FontWeight.w700,
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
