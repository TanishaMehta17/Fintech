// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:tanisha_s_application14/core/app_export.dart';
// import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
// import 'package:tanisha_s_application14/widgets/custom_pin_code_text_field.dart';

// class OptVerificationScreen extends StatelessWidget {
//   final number_controller = TextEditingController();
//   final number_controller1 = TextEditingController();
//   final number_controller2 = TextEditingController();
//   final number_controller3 = TextEditingController();
//   final FocusNode first = FocusNode();
//   final FocusNode second = FocusNode();
//   final FocusNode third = FocusNode();
//   final FocusNode fourth = FocusNode();
//   OptVerificationScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);
//     return SafeArea(
//         child: Scaffold(
//             resizeToAvoidBottomInset: false,
//             body: SizedBox(
//                 width: double.maxFinite,
//                 child: Container(
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 56.h, vertical: 65.v),
//                     decoration: AppDecoration.fillBlueGray.copyWith(
//                         borderRadius: BorderRadiusStyle.roundedBorder35),
//                     child: Column(mainAxisSize: MainAxisSize.min, children: [
//                       Text("Fintech", style: CustomTextStyles.titleLarge22_1),
//                       SizedBox(height: 38.v),
//                       CustomImageView(
//                           svgPath: ImageConstant.imgBag,
//                           height: 71.adaptSize,
//                           width: 71.adaptSize),
//                       SizedBox(height: 40.v),
//                       // Text("Enter Password",
//                       //     style: CustomTextStyles.titleMediumWhiteA700_1),
//                       // CustomPinCodeTextField(
//                       //     context: context,
//                       //     margin: EdgeInsets.only(
//                       //         left: 19.h, top: 25.v, right: 6.h),
//                       //     onChanged: (value) {}),
//                       Align(
//                           alignment: Alignment.center,
//                           child: Column(
//                             children: [
//                               Text(
//                                 'Enter Password',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w900,
//                                     color: Colors.white,
//                                     // CustomTextStyles.titleSmallWhiteA700_1,
//                                     fontSize: 20.0),
//                               ),
//                               SizedBox(height: 20.0),
//                               Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 0),
//                                     child: Container(
//                                       child: TextField(
//                                         //keyboardType: TextInputType.phone,
//                                         controller: number_controller,
//                                         focusNode: first,
//                                         textInputAction: TextInputAction.next,
//                                         onSubmitted: (_) {
//                                           FocusScope.of(context)
//                                               .requestFocus(second);
//                                         },
//                                         inputFormatters: <TextInputFormatter>[
//                                           FilteringTextInputFormatter
//                                               .digitsOnly,
//                                           LengthLimitingTextInputFormatter(1)
//                                         ],
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(fontSize: 25),
//                                         keyboardType: TextInputType.phone,
//                                       ),
//                                       width: 58.0,
//                                       height: 58.0,
//                                       decoration: BoxDecoration(
//                                           color: Colors.grey[200],
//                                           borderRadius:
//                                               BorderRadius.circular(10)),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 15),
//                                     child: Container(
//                                       child: TextField(
//                                         controller: number_controller1,
//                                         focusNode: second,
//                                         textInputAction: TextInputAction.next,
//                                         onSubmitted: (_) {
//                                           FocusScope.of(context)
//                                               .requestFocus(third);
//                                         },
//                                         inputFormatters: <TextInputFormatter>[
//                                           FilteringTextInputFormatter
//                                               .digitsOnly,
//                                           LengthLimitingTextInputFormatter(1)
//                                         ],
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(fontSize: 25),
//                                         keyboardType: TextInputType.phone,
//                                       ),
//                                       width: 58.0,
//                                       height: 58.0,
//                                       decoration: BoxDecoration(
//                                           color: Colors.grey[200],
//                                           borderRadius:
//                                               BorderRadius.circular(10)),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 15),
//                                     child: Container(
//                                       child: TextField(
//                                         controller: number_controller2,
//                                         focusNode: third,
//                                         textInputAction: TextInputAction.next,
//                                         onSubmitted: (_) {
//                                           FocusScope.of(context)
//                                               .requestFocus(fourth);
//                                         },
//                                         inputFormatters: <TextInputFormatter>[
//                                           FilteringTextInputFormatter
//                                               .digitsOnly,
//                                           LengthLimitingTextInputFormatter(1)
//                                         ],
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(fontSize: 25),
//                                         keyboardType: TextInputType.phone,
//                                       ),
//                                       width: 58.0,
//                                       height: 58.0,
//                                       decoration: BoxDecoration(
//                                           color: Colors.grey[200],
//                                           borderRadius:
//                                               BorderRadius.circular(10)),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 15),
//                                     child: Container(
//                                       child: TextField(
//                                         controller: number_controller3,
//                                         focusNode: fourth,
//                                         textInputAction: TextInputAction.done,
//                                         inputFormatters: <TextInputFormatter>[
//                                           FilteringTextInputFormatter
//                                               .digitsOnly,
//                                           LengthLimitingTextInputFormatter(1)
//                                         ],
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(fontSize: 25),
//                                         keyboardType: TextInputType.phone,
//                                       ),
//                                       width: 58.0,
//                                       height: 58.0,
//                                       decoration: BoxDecoration(
//                                           color: Colors.grey[200],
//                                           borderRadius:
//                                               BorderRadius.circular(10)),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           )),
//                       Spacer(),
//                       SizedBox(height: 36.v),
//                       CustomElevatedButton(
//                           text: "Verify OTP",
//                           onTap: () {
//                             onTapVerifyotp(context);
//                           })
//                     ])))));
//   }

//   /// Navigates to the setFingerprintScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the [Navigator] widget
//   /// to push the named route for the setFingerprintScreen.
//   onTapVerifyotp(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.setFingerprintScreen);
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

class OptVerificationScreen extends StatelessWidget {
  final number_controller = TextEditingController();
  final number_controller1 = TextEditingController();
  final number_controller2 = TextEditingController();
  final number_controller3 = TextEditingController();
  final FocusNode first = FocusNode();
  final FocusNode second = FocusNode();
  final FocusNode third = FocusNode();
  final FocusNode fourth = FocusNode();

  OptVerificationScreen({Key? key}) : super(key: key);

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
      Navigator.pushNamed(context, AppRoutes.popAddPinScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 56.h, vertical: 65.v),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder35,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Fintech", style: CustomTextStyles.titleLarge22_1),
                SizedBox(height: 38.v),
                CustomImageView(
                  svgPath: ImageConstant.imgBag,
                  height: 71.adaptSize,
                  width: 71.adaptSize,
                ),
                SizedBox(height: 40.v),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'Enter Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              child: TextField(
                                controller: number_controller,
                                focusNode: first,
                                textInputAction: TextInputAction.next,
                                onSubmitted: (_) {
                                  FocusScope.of(context).requestFocus(second);
                                },
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.phone,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25),
                              ),
                              width: 58.0,
                              height: 58.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
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
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.phone,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25),
                              ),
                              width: 58.0,
                              height: 58.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
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
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.phone,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25),
                              ),
                              width: 58.0,
                              height: 58.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              child: TextField(
                                controller: number_controller3,
                                focusNode: fourth,
                                textInputAction: TextInputAction.done,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.phone,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 25),
                              ),
                              width: 58.0,
                              height: 58.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(height: 36.v),
                CustomElevatedButton(
                  text: "Verify OTP",
                  onTap: () {
                    onTapVerifyotp(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
