import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray900,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 21.v),
                      SizedBox(
                          height: 433.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Opacity(
                                opacity: 0.19,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgCard18,
                                    height: 433.v,
                                    width: 127.h,
                                    radius: BorderRadius.circular(63.h),
                                    alignment: Alignment.centerLeft)),
                            CustomImageView(
                                imagePath: ImageConstant.imgCard16,
                                height: 368.v,
                                width: 283.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(left: 10.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgCard15,
                                height: 368.v,
                                width: 250.h,
                                alignment: Alignment.bottomRight),
                            CustomImageView(
                                imagePath: ImageConstant.imgCard13,
                                height: 307.v,
                                width: 84.h,
                                alignment: Alignment.bottomRight)
                          ])),
                      SizedBox(
                          height: 433.v,
                          width: 396.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Opacity(
                                opacity: 0.19,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgCard19,
                                    height: 433.v,
                                    width: 131.h,
                                    radius: BorderRadius.circular(65.h),
                                    alignment: Alignment.centerRight)),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 21.v),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              width: 245.h,
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "A loan for every dream with \n",
                                                        style: CustomTextStyles
                                                            .displaySmallWhiteA700Regular),
                                                    TextSpan(
                                                        text: "mobile banking",
                                                        style: CustomTextStyles
                                                            .displaySmallIndigoA20001)
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          SizedBox(height: 24.v),
                                          SizedBox(
                                              width: 286.h,
                                              child: Text(
                                                  "A loan facility that provides you financial assistance whenever you need.",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.titleMedium!
                                                      .copyWith(height: 1.47))),
                                          SizedBox(height: 21.v),
                                          Row(children: [
                                            Container(
                                                height: 1.v,
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 27.v),
                                                child: AnimatedSmoothIndicator(
                                                    activeIndex: 0,
                                                    count: 2,
                                                    effect: ScrollingDotsEffect(
                                                        activeDotColor:
                                                            Color(0X1212121D),
                                                        dotHeight: 1.v))),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 190),
                                              child: CustomElevatedButton(
                                                  height: 55.v,
                                                  width: 101.h,
                                                  text: "Skip",
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillErrorContainer,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleLargeBluegray10003,
                                                  onTap: () {
                                                    onTapSkip(context);
                                                  }),
                                            )
                                          ])
                                        ])))
                          ]))
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
