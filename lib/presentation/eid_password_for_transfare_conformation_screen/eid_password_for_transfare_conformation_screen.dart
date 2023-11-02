import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/eid_gift_confirmation_successful_transfer_screen/eid_gift_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class EidPasswordForTransfareConformationScreen extends StatelessWidget {
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
      Navigator.pushNamed(
          context, AppRoutes.eidGiftConfirmationSuccessfulTransferScreen);
    }
  }

  var name, accNo, amt;
  EidPasswordForTransfareConformationScreen(this.name, this.accNo, this.amt,
      {Key? key})
      : super(key: key);

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
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                height: 751.v,
                width: 429.h,
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 41.h, top: 11.v, right: 37.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse1752,
                                height: 105.adaptSize,
                                width: 105.adaptSize,
                                radius: BorderRadius.circular(37.h),
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 99.h)),
                            SizedBox(height: 137.v),
                            // Text("Enter Password",
                            //     style: CustomTextStyles.titleMediumWhiteA700_1),
                            // SizedBox(height: 78.v),
                            // CustomPinCodeTextField(
                            //     context: context, onChanged: (value) {}),
                            Spacer(),
                            Text("Forget Password",
                                style: CustomTextStyles.titleMediumWhiteA70016)
                          ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 1.h, top: 54.v, bottom: 28.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                                width: 368.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 52.h, vertical: 12.v),
                                decoration: AppDecoration.fillGray50001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 54.h, top: 42.v),
                                          child: Text("$name",
                                              style: theme
                                                  .textTheme.headlineMedium)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 84.h, top: 6.v),
                                          child: Text("$accNo",
                                              style: CustomTextStyles
                                                  .titleMedium16_1)),
                                      SizedBox(height: 19.v),
                                      Container(
                                          width: 249.h,
                                          padding: EdgeInsets.all(8.h),
                                          // decoration: AppDecoration
                                          //     .outlineBluegray500113
                                          //     .copyWith(
                                          //         borderRadius:
                                          //             BorderRadiusStyle
                                          //                 .roundedBorder10),
                                          decoration: BoxDecoration(
                                              color: Colors.red[100],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "Transactions Status:",
                                                    style: CustomTextStyles
                                                        .titleMediumPrimary),
                                                TextSpan(
                                                    text: " Pending",
                                                    style: CustomTextStyles
                                                        .titleMediumPrimary)
                                              ]),
                                              textAlign: TextAlign.center)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 52.h, top: 16.v),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "$amt",
                                                    style: theme.textTheme
                                                        .displaySmall),
                                                TextSpan(
                                                    text: "INR",
                                                    style: CustomTextStyles
                                                        .titleLargeSecondaryContainer_2)
                                              ]),
                                              textAlign: TextAlign.left))
                                    ])),
                            // Spacer(),
                            // CustomElevatedButton(
                            //     text: "Confirm",
                            //     margin:
                            //         EdgeInsets.only(left: 33.h, right: 19.h),
                            //     onTap: () {
                            //       onTapConfirm(context);
                            //     })
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
                                            const EdgeInsets.only(top: 140),
                                        child: CustomElevatedButton(
                                          text: 'Confirm',
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

  /// Navigates to the eidGiftConfirmationSuccessfulTransferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the eidGiftConfirmationSuccessfulTransferScreen.
  // onTapConfirm(BuildContext context) {
  //   Navigator.pushNamed(
  //       context, AppRoutes.eidGiftConfirmationSuccessfulTransferScreen);
  // }
  onTapConfirm(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              EidGiftConfirmationSuccessfulTransferScreen(name, accNo, amt)),
    );
  }
}
