import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/netflix_confirmation_successful_transfer_screen/netflix_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_pin_code_text_field.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore_for_file: must_be_immutable
class NetflixScreen extends StatelessWidget {
  var acc;
  NetflixScreen(this.acc, {Key? key}) : super(key: key);

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
      // Navigator.pushNamed(context, AppRoutes.homeLoanPaymentDoneScreen);

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                NetflixConfirmationSuccessfulTransferScreen(acc)),
      );
    }
  }

  TextEditingController transactionsStaController = TextEditingController();

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
                                  left: 37.h, top: 10.v, right: 16.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgNetflix1,
                                      height: 65.adaptSize,
                                      width: 65.adaptSize,
                                      // radius: BorderRadius.circular(35.h)
                                    ),
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
                                    Text("Netflix",
                                        style: theme.textTheme.headlineMedium),
                                    SizedBox(height: 6.v),
                                    Text("2******6125",
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
                                              text: "1.00",
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
                            text: 'Confirm',
                            width: 350,
                            onTap: () {
                              // onTapPaynow(context);
                              //onTapConfirm(context);
                              onTapVerifyotp(context);
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

  Future<void> onTapConfirm(BuildContext context) async {
    String dig1 = number_controller.text;
    String dig2 = number_controller1.text;
    String dig3 = number_controller2.text;
    String dig4 = number_controller3.text;
    String pin = dig1 + dig2 + dig3 + dig4;

    var response = await http.post(
      Uri.parse("http://localhost:5000/netflix"),
      headers: {
        "Content-Type": "application/json",
        "token": "token",
        "pin": pin
      },
      body: jsonEncode({"event": "bill_payment", "scheme": "netflix"}),
    );

    if (response.statusCode == 200) {
      Navigator.pushNamed(
          context, AppRoutes.netflixConfirmationSuccessfulTransferScreen);
    } else if (response.statusCode == 400) {
      ///Invalid PIN
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Invalid credentials. Please try again.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else if (response.statusCode == 401) {
      ///Login screen redirect session expire
    } else {
      ///Some error occured
    }
  }
}
