// import 'package:flutter/material.dart';
// import 'package:tanisha_s_application14/core/app_export.dart';

// class CustomRadioButton extends StatelessWidget {
//   CustomRadioButton({
//     Key? key,
//     required this.onChange,
//     this.decoration,
//     this.alignment,
//     this.isRightCheck,
//     this.iconSize,
//     this.value,
//     this.groupValue,
//     this.text,
//     this.width,
//     this.margin,
//     this.padding,
//     this.textStyle,
//     this.textAlignment,
//     this.gradient,
//     this.backgroundColor,
//   }) : super(
//           key: key,
//         );

//   final BoxDecoration? decoration;

//   final Alignment? alignment;

//   final bool? isRightCheck;

//   final double? iconSize;

//   String? value;

//   final String? groupValue;

//   final Function(String) onChange;

//   final String? text;

//   final double? width;

//   final EdgeInsetsGeometry? margin;

//   final EdgeInsetsGeometry? padding;

//   final TextStyle? textStyle;

//   final TextAlign? textAlignment;

//   final Gradient? gradient;

//   final Color? backgroundColor;

//   @override
//   Widget build(BuildContext context) {
//     return alignment != null
//         ? Align(
//             alignment: alignment ?? Alignment.center,
//             child: buildRadioButtonWidget,
//           )
//         : buildRadioButtonWidget;
//   }

//   bool get isGradient => gradient != null;
//   BoxDecoration get gradientDecoration => BoxDecoration(gradient: gradient);
//   Widget get buildRadioButtonWidget => InkWell(
//         onTap: () {
//           onChange(value!);
//         },
//         child: Container(
//           decoration: decoration,
//           width: width,
//           margin: margin ?? EdgeInsets.zero,
//           padding: padding,
//           child: (isRightCheck ?? false)
//               ? rightSideRadioButton
//               : leftSideRadioButton,
//         ),
//       );
//   Widget get leftSideRadioButton => Row(
//         children: [
//           Padding(
//             child: radioButtonWidget,
//             padding: EdgeInsets.only(right: 8),
//           ),
//           textWidget,
//         ],
//       );
//   Widget get rightSideRadioButton => Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           textWidget,
//           Padding(
//             padding: EdgeInsets.only(left: 8),
//             child: radioButtonWidget,
//           ),
//         ],
//       );
//   Widget get textWidget => Text(
//         text ?? "",
//         textAlign: textAlignment ?? TextAlign.center,
//         style: textStyle ?? CustomTextStyles.titleMediumBluegray90016,
//       );
//   Widget get radioButtonWidget => SizedBox(
//         height: iconSize,
//         width: iconSize,
//         child: Radio<String>(
//           visualDensity: VisualDensity(
//             vertical: -4,
//             horizontal: -4,
//           ),
//           value: value ?? "",
//           groupValue: groupValue,
//           onChanged: (value) {
//             onChange(value!);
//           },
//         ),
//       );
//   BoxDecoration get radioButtonDecoration =>
//       BoxDecoration(color: backgroundColor);
// }
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton({
    Key? key,
    required this.onChange,
    this.decoration,
    this.isRightCheck,
    this.iconSize,
    this.value,
    this.groupValue,
    this.text,
    this.width,
    this.margin,
    this.padding,
    this.textStyle,
    this.textAlignment,
    this.gradient,
    this.backgroundColor,
    this.logoImagePath, // New property for the image path
  }) : super(key: key);

  final BoxDecoration? decoration;
  final bool? isRightCheck;
  final double? iconSize;
  String? value;
  final String? groupValue;
  final Function(String) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextAlign? textAlignment;
  final Gradient? gradient;
  final Color? backgroundColor;
  final String? logoImagePath; // New property for the image path

  @override
  Widget build(BuildContext context) {
    return buildRadioButtonWidget;
  }

  Widget get buildRadioButtonWidget => InkWell(
        onTap: () {
          onChange(value!);
        },
        child: Container(
          decoration: decoration,
          width: width,
          margin: margin ?? EdgeInsets.zero,
          padding: padding,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8), // Adjust padding as needed
                child: Image.asset(
                  logoImagePath ?? '', // Replace with your image path
                  height: iconSize ?? 24, // Set the height of the image
                  width: iconSize ?? 24, // Set the width of the image
                ),
              ),
              Expanded(
                child: textWidget,
              ),
              radioButtonWidget,
            ],
          ),
        ),
      );

  Widget get textWidget => Text(
        text ?? "",
        textAlign: textAlignment ?? TextAlign.center,
        style: textStyle ?? TextStyle(fontSize: 16),
      );

  Widget get radioButtonWidget => SizedBox(
        height: iconSize,
        width: iconSize,
        child: Radio<String>(
          visualDensity: VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          value: value ?? "",
          groupValue: groupValue,
          onChanged: (value) {
            onChange(value!);
          },
        ),
      );
}
