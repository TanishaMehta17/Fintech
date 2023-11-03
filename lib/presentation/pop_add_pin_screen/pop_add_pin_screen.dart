import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PopAddPinScreen extends StatelessWidget {
  final number_controller = TextEditingController();
  final number_controller1 = TextEditingController();
  final number_controller2 = TextEditingController();
  final number_controller3 = TextEditingController();
  final FocusNode first = FocusNode();
  final FocusNode second = FocusNode();
  final FocusNode third = FocusNode();
  final FocusNode fourth = FocusNode();

  void onTapVerifyotp(BuildContext context) {
    if (number_controller.text.isEmpty ||
        number_controller1.text.isEmpty ||
        number_controller2.text.isEmpty ||
        number_controller3.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'All OTP fields must be filled',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      // All OTP fields are filled, navigate to the next screen.
      Navigator.pushNamed(context, AppRoutes.dashboardScreen);
    }
  }

  PopAddPinScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 833.v,
                width: 429.h,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  // Align(
                  //     alignment: Alignment.bottomCenter,
                  //     child: Padding(
                  //         padding: EdgeInsets.only(
                  //             left: 56.h, right: 56.h, bottom: 35.v),
                  //         child:
                  //             Column(mainAxisSize: MainAxisSize.min, children: [
                  //           CustomPinCodeTextField(
                  //               context: context,
                  //               margin:
                  //                   EdgeInsets.only(left: 36.h, right: 35.h),
                  //               onChanged: (value) {}),
                  //           CustomPinCodeTextField(
                  //               context: context,
                  //               margin: EdgeInsets.only(
                  //                   left: 87.h, top: 107.v, right: 87.h),
                  //               onChanged: (value) {}),
                  //           SizedBox(height: 29.v),
                  //           Container(
                  //               width: 316.h,
                  //               padding: EdgeInsets.symmetric(
                  //                   horizontal: 137.h, vertical: 19.v),
                  //               decoration: AppDecoration.fillIndigoA200011
                  //                   .copyWith(
                  //                       borderRadius:
                  //                           BorderRadiusStyle.roundedBorder10),
                  //               child: Text("Next",
                  //                   style: theme.textTheme.titleLarge))
                  //         ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 21.v),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.customBorderTL20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    alignment: Alignment.centerRight,
                                    onTap: () {
                                      onTapImgCloseone(context);
                                    }),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 25.h, top: 14.v),
                                    child: Text("Enter New Pin",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90019_2)),
                                SizedBox(height: 20),
                                // CustomPinCodeTextField(
                                //     context: context,
                                //     margin: EdgeInsets.only(
                                //         left: 7.h, top: 18.v, right: 9.h),
                                //     onChanged: (value) {}),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      children: [
                                        // Text(
                                        //   'Enter Password',
                                        //   style: TextStyle(
                                        //       fontWeight: FontWeight.w900,
                                        //       color: Colors.black,
                                        //       fontSize: 17.0),
                                        // ),
                                        // SizedBox(height: 20.0),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Container(
                                                child: TextField(
                                                  //keyboardType: TextInputType.phone,
                                                  controller: number_controller,
                                                  focusNode: first,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  onSubmitted: (_) {
                                                    FocusScope.of(context)
                                                        .requestFocus(second);
                                                  },
                                                  inputFormatters: <TextInputFormatter>[
                                                    FilteringTextInputFormatter
                                                        .digitsOnly,
                                                    LengthLimitingTextInputFormatter(
                                                        1)
                                                  ],
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                  keyboardType:
                                                      TextInputType.phone,
                                                ),
                                                width: 58.0,
                                                height: 58.0,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25),
                                              child: Container(
                                                child: TextField(
                                                  controller:
                                                      number_controller1,
                                                  focusNode: second,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  onSubmitted: (_) {
                                                    FocusScope.of(context)
                                                        .requestFocus(third);
                                                  },
                                                  inputFormatters: <TextInputFormatter>[
                                                    FilteringTextInputFormatter
                                                        .digitsOnly,
                                                    LengthLimitingTextInputFormatter(
                                                        1)
                                                  ],
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                  keyboardType:
                                                      TextInputType.phone,
                                                ),
                                                width: 58.0,
                                                height: 58.0,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Container(
                                                child: TextField(
                                                  controller:
                                                      number_controller2,
                                                  focusNode: third,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  onSubmitted: (_) {
                                                    FocusScope.of(context)
                                                        .requestFocus(fourth);
                                                  },
                                                  inputFormatters: <TextInputFormatter>[
                                                    FilteringTextInputFormatter
                                                        .digitsOnly,
                                                    LengthLimitingTextInputFormatter(
                                                        1)
                                                  ],
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                  keyboardType:
                                                      TextInputType.phone,
                                                ),
                                                width: 58.0,
                                                height: 58.0,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Container(
                                                child: TextField(
                                                  controller:
                                                      number_controller3,
                                                  focusNode: fourth,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  inputFormatters: <TextInputFormatter>[
                                                    FilteringTextInputFormatter
                                                        .digitsOnly,
                                                    LengthLimitingTextInputFormatter(
                                                        1)
                                                  ],
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                  keyboardType:
                                                      TextInputType.phone,
                                                ),
                                                width: 58.0,
                                                height: 58.0,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(top: 150),
                                        //   child: CustomElevatedButton(
                                        //     text: 'Pay Now',
                                        //     width: 350,
                                        //     onTap: () {
                                        //       // onTapPaynow(context);
                                        //       //onTapConfirm(context);
                                        //     },
                                        //   ),
                                        // )
                                      ],
                                    )),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 25.h, top: 40.v),
                                    child: Text("Confirm Pin Code",
                                        style: CustomTextStyles
                                            .titleMediumBluegray90019_2)),
                                // CustomPinCodeTextField(
                                //     context: context,
                                //     margin: EdgeInsets.only(
                                //         left: 7.h, top: 16.v, right: 9.h),
                                //     onChanged: (value) {}),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                      children: [
                                        // Text(
                                        //   'Enter Password',
                                        //   style: TextStyle(
                                        //       fontWeight: FontWeight.w900,
                                        //       color: Colors.black,
                                        //       fontSize: 17.0),
                                        // ),
                                        SizedBox(height: 20.0),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Container(
                                                child: TextField(
                                                  //keyboardType: TextInputType.phone,
                                                  controller: number_controller,
                                                  focusNode: first,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  onSubmitted: (_) {
                                                    FocusScope.of(context)
                                                        .requestFocus(second);
                                                  },
                                                  inputFormatters: <TextInputFormatter>[
                                                    FilteringTextInputFormatter
                                                        .digitsOnly,
                                                    LengthLimitingTextInputFormatter(
                                                        1)
                                                  ],
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                  keyboardType:
                                                      TextInputType.phone,
                                                ),
                                                width: 58.0,
                                                height: 58.0,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25),
                                              child: Container(
                                                child: TextField(
                                                  controller:
                                                      number_controller1,
                                                  focusNode: second,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  onSubmitted: (_) {
                                                    FocusScope.of(context)
                                                        .requestFocus(third);
                                                  },
                                                  inputFormatters: <TextInputFormatter>[
                                                    FilteringTextInputFormatter
                                                        .digitsOnly,
                                                    LengthLimitingTextInputFormatter(
                                                        1)
                                                  ],
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                  keyboardType:
                                                      TextInputType.phone,
                                                ),
                                                width: 58.0,
                                                height: 58.0,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Container(
                                                child: TextField(
                                                  controller:
                                                      number_controller2,
                                                  focusNode: third,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  onSubmitted: (_) {
                                                    FocusScope.of(context)
                                                        .requestFocus(fourth);
                                                  },
                                                  inputFormatters: <TextInputFormatter>[
                                                    FilteringTextInputFormatter
                                                        .digitsOnly,
                                                    LengthLimitingTextInputFormatter(
                                                        1)
                                                  ],
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                  keyboardType:
                                                      TextInputType.phone,
                                                ),
                                                width: 58.0,
                                                height: 58.0,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Container(
                                                child: TextField(
                                                  controller:
                                                      number_controller3,
                                                  focusNode: fourth,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  inputFormatters: <TextInputFormatter>[
                                                    FilteringTextInputFormatter
                                                        .digitsOnly,
                                                    LengthLimitingTextInputFormatter(
                                                        1)
                                                  ],
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                  keyboardType:
                                                      TextInputType.phone,
                                                ),
                                                width: 58.0,
                                                height: 58.0,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(top: 150),
                                        //   child: CustomElevatedButton(
                                        //     text: 'Pay Now',
                                        //     width: 350,
                                        //     onTap: () {
                                        //       // onTapPaynow(context);
                                        //       //onTapConfirm(context);
                                        //     },
                                        //   ),
                                        // )
                                      ],
                                    )),

                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.h, top: 16.v),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Your PIN codes are the same",
                                              style: CustomTextStyles
                                                  .titleMediumBluegray900_3),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCheckmarkPrimary10x15,
                                              height: 10.v,
                                              width: 15.h,
                                              margin: EdgeInsets.only(
                                                  left: 41.h,
                                                  top: 4.v,
                                                  bottom: 5.v))
                                        ])),
                                CustomElevatedButton(
                                    text: "Done",
                                    margin: EdgeInsets.fromLTRB(
                                        33.h, 61.v, 34.h, 29.v),
                                    onTap: () {
                                      onTapVerifyotp(context);
                                    },
                                    alignment: Alignment.center)
                              ])))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the otpVarificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the otpVarificationScreen.
  onTapImgCloseone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpVarificationScreen);
  }

  /// Navigates to the cardSettingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cardSettingsScreen.
  onTapDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cardSettingsScreen);
  }
}
