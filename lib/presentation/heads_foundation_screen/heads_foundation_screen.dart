import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HeadsFoundationScreen extends StatelessWidget {
  final number_controller = TextEditingController();
  final number_controller1 = TextEditingController();
  final number_controller2 = TextEditingController();
  final number_controller3 = TextEditingController();
  final FocusNode first = FocusNode();
  final FocusNode second = FocusNode();
  final FocusNode third = FocusNode();
  final FocusNode fourth = FocusNode();
  HeadsFoundationScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 78.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Password"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v),
                      onTap: () {
                        onTapCheckmarkone(context);
                      })
                ]),
            body: Column(
              children: [
                Container(
                    height: 351.v,
                    width: 429.h,
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 37.h, top: 0.v, right: 16.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse1751,
                                        height: 125.adaptSize,
                                        width: 125.adaptSize,
                                        radius: BorderRadius.circular(35.h)),
                                    Spacer(),
                                    // Padding(
                                    //   padding:
                                    //       const EdgeInsets.only(bottom: 20),
                                    //   child: CustomElevatedButton(
                                    //       text: "Pay Now",
                                    //       onTap: () {
                                    //         onTapPaynow(context);
                                    //       }),
                                    // ),

                                    // Padding(
                                    //     padding: EdgeInsets.only(
                                    //         left: 83.h, top: 82.v),
                                    //     child: Text("Forget Password",
                                    //         style: CustomTextStyles
                                    //             .titleMediumWhiteA70016))
                                  ]))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              margin: EdgeInsets.only(left: 1.h, top: 43.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 59.h, vertical: 15.v),
                              decoration: AppDecoration.fillGray50001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 45.v),
                                    Text("Head Foundation",
                                        style: theme.textTheme.headlineMedium),
                                    SizedBox(height: 6.v),
                                    Text("1******6196",
                                        style:
                                            CustomTextStyles.titleMedium16_1),
                                    SizedBox(height: 19.v),
                                    Container(
                                        // width: 249.h,
                                        // padding: EdgeInsets.all(8.h),
                                        // decoration: AppDecoration
                                        //     .outlineBluegray500113
                                        //     .copyWith(
                                        //         borderRadius: BorderRadiusStyle
                                        //             .roundedBorder10),
                                        child: Container(
                                      width: 249.h,
                                      padding: EdgeInsets.all(8.h),
                                      decoration: BoxDecoration(
                                          color: Colors.red[100],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Transactions Status:",
                                                style: CustomTextStyles
                                                    .titleMediumPrimary),
                                            TextSpan(
                                                text: " Pending",
                                                style: CustomTextStyles
                                                    .titleMediumPrimary)
                                          ]),
                                          textAlign: TextAlign.center),
                                    )),
                                    SizedBox(height: 16.v),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "50.00",
                                              style:
                                                  theme.textTheme.displaySmall),
                                          TextSpan(
                                              text: "INR",
                                              style: CustomTextStyles
                                                  .titleLargeSecondaryContainer_2)
                                        ]),
                                        textAlign: TextAlign.left)
                                  ])))
                    ])),
                Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'Enter Password',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              fontSize: 17.0),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Container(
                                child: TextField(
                                  //keyboardType: TextInputType.phone,
                                  controller: number_controller,
                                  focusNode: first,
                                  textInputAction: TextInputAction.next,
                                  onSubmitted: (_) {
                                    FocusScope.of(context).requestFocus(second);
                                  },
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25),
                                  keyboardType: TextInputType.phone,
                                ),
                                width: 58.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Container(
                                child: TextField(
                                  controller: number_controller1,
                                  focusNode: second,
                                  textInputAction: TextInputAction.next,
                                  onSubmitted: (_) {
                                    FocusScope.of(context).requestFocus(third);
                                  },
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25),
                                  keyboardType: TextInputType.phone,
                                ),
                                width: 58.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Container(
                                child: TextField(
                                  controller: number_controller2,
                                  focusNode: third,
                                  textInputAction: TextInputAction.next,
                                  onSubmitted: (_) {
                                    FocusScope.of(context).requestFocus(fourth);
                                  },
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25),
                                  keyboardType: TextInputType.phone,
                                ),
                                width: 58.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Container(
                                child: TextField(
                                  controller: number_controller3,
                                  focusNode: fourth,
                                  textInputAction: TextInputAction.done,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25),
                                  keyboardType: TextInputType.phone,
                                ),
                                width: 58.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 150),
                          child: CustomElevatedButton(
                            text: 'Pay Now',
                            width: 350,
                            onTap: () {
                              // onTapPaynow(context);
                              onTapConfirm(context);
                            },
                          ),
                        )
                      ],
                    )),
              ],
            ),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationScreen.
  onTapCheckmarkone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }

  /// Navigates to the headsFoundationReciptScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the headsFoundationReciptScreen.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.headsFoundationReciptScreen);
  }
}
