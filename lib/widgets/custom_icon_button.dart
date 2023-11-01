import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    color: appTheme.black90003,
                    borderRadius: BorderRadius.circular(5.h),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber300.withOpacity(0.15),
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get fillTealA => BoxDecoration(
        color: appTheme.tealA70001.withOpacity(0.15),
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.15),
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA20001.withOpacity(0.15),
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal50,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50001.withOpacity(0.15),
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get fillGrayTL30 => BoxDecoration(
        color: appTheme.gray50001,
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.tealA70001,
        borderRadius: BorderRadius.circular(5.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray50011.withOpacity(0.11),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              1,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGrayTL5 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(5.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray50011.withOpacity(0.11),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              1,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange5001,
        borderRadius: BorderRadius.circular(31.h),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.tealA70001,
        borderRadius: BorderRadius.circular(5.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90003.withOpacity(0.09),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              8,
              7,
            ),
          ),
        ],
      );
}
