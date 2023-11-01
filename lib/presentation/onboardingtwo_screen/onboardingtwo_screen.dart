import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

class OnboardingtwoScreen extends StatelessWidget {
  const OnboardingtwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray900,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 946.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 433.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Opacity(
                                opacity: 0.19,
                                child: GestureDetector(
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgCard18433x130,
                                    height: 433.v,
                                    width: 130.h,
                                    radius: BorderRadius.circular(
                                      65.h,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  onTap: () {
                                    onTapc(context);
                                  },
                                ),
                              ),
                              GestureDetector(
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgCard16,
                                  height: 368.v,
                                  width: 283.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(left: 13.h),
                                ),
                                onTap: () {
                                  onTapc(context);
                                },
                              ),
                              GestureDetector(
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgCard15368x248,
                                  height: 368.v,
                                  width: 248.h,
                                  alignment: Alignment.bottomRight,
                                ),
                                onTap: () {
                                  onTapc(context);
                                },
                              ),
                              GestureDetector(
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgCard13307x82,
                                  height: 307.v,
                                  width: 82.h,
                                  alignment: Alignment.bottomRight,
                                ),
                                onTap: () {
                                  onTapc(context);
                                },
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.19,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCard19433x129,
                            height: 433.v,
                            width: 129.h,
                            radius: BorderRadius.circular(
                              64.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 32.h,
                        right: 32.h,
                        bottom: 20.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 235.h,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Manage Your\nPayments with ",
                                    style: CustomTextStyles
                                        .displaySmallWhiteA700Regular
                                        .copyWith(
                                      height: 1.36,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "mobile banking",
                                    style: CustomTextStyles
                                        .displaySmallIndigoA20001,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            width: 354.h,
                            margin: EdgeInsets.only(
                              top: 24.v,
                              right: 8.h,
                            ),
                            child: Text(
                              "A convenient way to manage your money securely from mobile device.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium!.copyWith(
                                height: 1.47,
                              ),
                            ),
                          ),
                          SizedBox(height: 21.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgGroup2216,
                                height: 1.v,
                                width: 94.h,
                                margin: EdgeInsets.symmetric(vertical: 27.v),
                              ),
                              CustomElevatedButton(
                                height: 55.v,
                                width: 101.h,
                                text: "Skip",
                                buttonStyle:
                                    CustomButtonStyles.fillErrorContainer,
                                buttonTextStyle:
                                    CustomTextStyles.titleLargeBluegray10003,
                                onTap: () {
                                  onTapg(context);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapg(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapc(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingScreen);
  }
}
