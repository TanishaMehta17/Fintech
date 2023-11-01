import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';

class OnboardingoneScreen extends StatelessWidget {
  const OnboardingoneScreen({Key? key})
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
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 763.adaptSize,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      GestureDetector(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEllipse50,
                          height: 763..adaptSize,
                          width: 428..adaptSize,
                          alignment: Alignment.center,
                        ),
                        onTap: () {
                          onTapg(context);
                        },
                      ),
                      GestureDetector(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEllipse51,
                          height: 465.adaptSize,
                          width: 428..adaptSize,
                          alignment: Alignment.center,
                        ),
                        onTap: () {
                          onTapg(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  child: Container(
                    height: 277.adaptSize,
                    width: 277.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.errorContainer.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(
                        138.h,
                      ),
                    ),
                  ),
                  onTap: () {
                    onTapg(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapg(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingtwoScreen);
  }
}
