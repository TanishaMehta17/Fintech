// import 'package:flutter/material.dart';
// import 'package:tanisha_s_application14/core/app_export.dart';
// import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// // ignore: must_be_immutable
// class UserprofilerowItemWidget extends StatelessWidget {
//   UserprofilerowItemWidget({
//     Key? key,
//     this.onTapApplyButton,
//   }) : super(
//           key: key,
//         );

//   VoidCallback? onTapApplyButton;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: 12.h,
//         vertical: 26.v,
//       ),
//       decoration: AppDecoration.outlineBlueGray.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder10,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(
//               top: 3.v,
//               bottom: 11.v,
//             ),
//             child: Text(
//               "Normal RD",
//               style: CustomTextStyles.titleLargeBluegray900_1,
//             ),
//           ),
//           CustomElevatedButton(
//             height: 32.v,
//             width: 82.h,
//             text: "Apply",
//             margin: EdgeInsets.only(
//               left: 84.h,
//               bottom: 5.v,
//             ),
//             buttonStyle: CustomButtonStyles.fillPrimaryTL7,
//             buttonTextStyle: CustomTextStyles.titleMediumWhiteA70016,
//             onTap: () {
//               onTapApplyButton?.call();
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';
// import 'package:mohit_s_application30/core/app_export.dart';
// import 'package:mohit_s_application30/widgets/custom_elevated_button.dart';
// import 'package:mohit_s_application30/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserticketItemWidget extends StatelessWidget {
  const UserticketItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 49.v,
            width: 50.h,
            margin: EdgeInsets.only(left: 7.h),
            padding: EdgeInsets.all(13.h),
            child: CustomImageView(
              svgPath: ImageConstant.imgTicket,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 12.v,
            ),
            child: Text(
              "Normal RD",
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomElevatedButton(
            width: 82.h,
            text: "Apply",
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }
}
