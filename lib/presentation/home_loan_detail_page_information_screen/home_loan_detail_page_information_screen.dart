import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';
import 'package:tanisha_s_application14/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class HomeLoanDetailPageInformationScreen extends StatelessWidget {
  var amt;
  HomeLoanDetailPageInformationScreen(this.amt, {Key? key}) : super(key: key);
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
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
      Navigator.pushNamed(context, AppRoutes.homeLoanPaymentDoneScreen);
    }
  }

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
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                height: 800.v,
                width: 429.h,
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 40.h, top: 223.v, right: 15.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Padding(
                                //     padding: EdgeInsets.only(left: 81.h),
                                //     child: Text("Enter Password",
                                //         style: CustomTextStyles
                                //             .titleMediumWhiteA700_1)),
                                // CustomPinCodeTextField(
                                //     context: context,
                                //     margin: EdgeInsets.only(
                                //         left: 12.h, top: 136.v, right: 13.h),
                                //     onChanged: (value) {}),
                                Spacer(),
                                // CustomElevatedButton(text: "Confirm"),
                                // Padding(
                                //     padding:
                                //         EdgeInsets.only(left: 81.h, top: 99.v),
                                //     child: Text("Forget Password",
                                //         style: CustomTextStyles
                                //             .titleMediumWhiteA70016))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h, top: 45.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomIconButton(
                                height: 59.v,
                                width: 60.h,
                                padding: EdgeInsets.all(14.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgHome)),
                            SizedBox(
                                height: 243.v,
                                width: 369.h,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 243.v,
                                              width: 368.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray50001
                                                      .withOpacity(0.15),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.h)))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(left: 1.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 31.h,
                                                  vertical: 39.v),
                                              // decoration: AppDecoration
                                              //     .fillGray50001
                                              //     .copyWith(
                                              //         borderRadius:
                                              //             BorderRadiusStyle
                                              //                 .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 3.v),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 3.v),
                                                              child: Text(
                                                                  "Loan Amount",
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleMedium)),
                                                          RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "$amt",
                                                                        style: CustomTextStyles
                                                                            .titleLargeBluegray900_2),
                                                                    TextSpan(
                                                                        text:
                                                                            "INR",
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelSmall)
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left)
                                                        ]),
                                                    SizedBox(height: 19.v),
                                                    Divider(),
                                                    SizedBox(height: 18.v),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 7.v),
                                                              child: Text(
                                                                  "Intrest",
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleMedium)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          3.v),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "4800.00",
                                                                            style:
                                                                                CustomTextStyles.titleLargeBluegray900_2),
                                                                        TextSpan(
                                                                            text:
                                                                                "INR",
                                                                            style:
                                                                                theme.textTheme.labelSmall)
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left))
                                                        ]),
                                                    SizedBox(height: 17.v),
                                                    Divider(),
                                                    SizedBox(height: 21.v),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 4.v),
                                                              child: Text(
                                                                  "Due Date",
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleMedium)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          2.v),
                                                              child: Text(
                                                                  "Nov 12, 2023",
                                                                  style: CustomTextStyles
                                                                      .titleLargeBluegray900_1))
                                                        ])
                                                  ])))
                                    ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Align(
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
                                            padding:
                                                const EdgeInsets.only(left: 30),
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
                                                style: TextStyle(fontSize: 25),
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
                                            padding:
                                                const EdgeInsets.only(left: 25),
                                            child: Container(
                                              child: TextField(
                                                controller: number_controller1,
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
                                                style: TextStyle(fontSize: 25),
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
                                            padding:
                                                const EdgeInsets.only(left: 25),
                                            child: Container(
                                              child: TextField(
                                                controller: number_controller2,
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
                                                style: TextStyle(fontSize: 25),
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
                                            padding:
                                                const EdgeInsets.only(left: 25),
                                            child: Container(
                                              child: TextField(
                                                controller: number_controller3,
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
                                                style: TextStyle(fontSize: 25),
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
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 150),
                                        child: CustomElevatedButton(
                                          text: 'Pay Now',
                                          width: 350,
                                          onTap: () {
                                            onTapVerifyotp(context);
                                          },
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ])))
                ])),
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

  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeLoanPaymentDoneScreen);
  }
}
