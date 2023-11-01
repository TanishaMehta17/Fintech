import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_pin_code_text_field.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InterNetBillPasswordScreen extends StatelessWidget {
  final number_controller = TextEditingController();
  final number_controller1 = TextEditingController();
  final number_controller2 = TextEditingController();
  final number_controller3 = TextEditingController();
  final FocusNode first = FocusNode();
  final FocusNode second = FocusNode();
  final FocusNode third = FocusNode();
  final FocusNode fourth = FocusNode();
  InterNetBillPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController statusTextController = TextEditingController();

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
            body: SizedBox(
                width: 429.h,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30.h, right: 30.h, bottom: 5.v),
                              child: Column(children: [
                                SizedBox(
                                    height: 283.v,
                                    width: 368.h,
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 59.h,
                                                      vertical: 11.v),
                                                  decoration: AppDecoration
                                                      .fillGray50001
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        SizedBox(height: 43.v),
                                                        Text("Internet Bill",
                                                            style: theme
                                                                .textTheme
                                                                .headlineMedium),
                                                        SizedBox(height: 12.v),
                                                        Text("David John",
                                                            style: CustomTextStyles
                                                                .titleMedium16_1),
                                                        SizedBox(height: 19.v),
                                                        CustomTextFormField(
                                                            controller:
                                                                statusTextController,
                                                            hintText:
                                                                "Transactions Status: Unpaid",
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .titleMediumPrimary16_1,
                                                            contentPadding:
                                                                EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        14.h,
                                                                    vertical:
                                                                        9.v),
                                                            borderDecoration:
                                                                TextFormFieldStyleHelper
                                                                    .outlineBlueGrayTL10,
                                                            fillColor: Colors
                                                                .red[100]),
                                                        SizedBox(height: 16.v),
                                                        RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          "350.00",
                                                                      style: theme
                                                                          .textTheme
                                                                          .displaySmall),
                                                                  TextSpan(
                                                                      text:
                                                                          "INR",
                                                                      style: CustomTextStyles
                                                                          .titleLargeSecondaryContainer_2)
                                                                ]),
                                                            textAlign: TextAlign
                                                                .center)
                                                      ]))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgQuestion,
                                              height: 32.v,
                                              width: 33.h)
                                        ])),
                                SizedBox(height: 87.v),
                                // Text("Enter Password",
                                //     style: CustomTextStyles
                                //         .titleMediumBluegray800),
                                // CustomPinCodeTextField(
                                //     context: context,
                                //     margin: EdgeInsets.only(
                                //         left: 39.h, top: 69.v, right: 38.h),
                                //     onChanged: (value) {}),
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
                                              padding: const EdgeInsets.only(
                                                  left: 30),
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
                                                  left: 25),
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
                                                  left: 25),
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
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 150),
                                          child: CustomElevatedButton(
                                            text: 'Confirm',
                                            width: 350,
                                            onTap: () {
                                              // onTapPaynow(context);
                                              onTapConfirm(context);
                                            },
                                          ),
                                        )
                                      ],
                                    )),
                                SizedBox(height: 48.v),
                                Text("Forget Password",
                                    style: CustomTextStyles
                                        .titleMediumWhiteA70016),
                                CustomElevatedButton(
                                    text: "Confirm",
                                    margin: EdgeInsets.only(
                                        left: 20.h, top: 32.v, right: 32.h),
                                    onTap: () {
                                      onTapConfirm(context);
                                    },
                                    alignment: Alignment.centerLeft)
                              ]))))
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

  /// Navigates to the internetBillReceiptScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the internetBillReceiptScreen.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.internetBillReceiptScreen);
  }
}
