import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore_for_file: must_be_immutable
class WaterBillPaymentScreen extends StatelessWidget {
  final number_controller = TextEditingController();
  final number_controller1 = TextEditingController();
  final number_controller2 = TextEditingController();
  final number_controller3 = TextEditingController();
  final FocusNode first = FocusNode();
  final FocusNode second = FocusNode();
  final FocusNode third = FocusNode();
  final FocusNode fourth = FocusNode();
  WaterBillPaymentScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController transactionsstaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Password"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 31.h, vertical: 4.v))
                ]),
            body: Container(
              width: 429.h,
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 283.v,
                      width: 368.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 59.h, vertical: 11.v),
                                decoration: AppDecoration.fillGray50001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 63.h, top: 43.v),
                                              child: Text("Water Bill",
                                                  style: theme.textTheme
                                                      .headlineMedium))),
                                      SizedBox(height: 12.v),
                                      Text("David John",
                                          style:
                                              CustomTextStyles.titleMedium16_1),
                                      SizedBox(height: 19.v),
                                      CustomTextFormField(
                                          controller: transactionsstaController,
                                          hintText:
                                              "Transactions Status: Unpaid",
                                          hintStyle: CustomTextStyles
                                              .titleMediumPrimary16_1,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 14.h, vertical: 9.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineBlueGrayTL10,
                                          fillColor: Colors.red[100]),
                                      SizedBox(height: 16.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "350.00",
                                                style: theme
                                                    .textTheme.displaySmall),
                                            TextSpan(
                                                text: "INR",
                                                style: CustomTextStyles
                                                    .titleLargeSecondaryContainer_2)
                                          ]),
                                          textAlign: TextAlign.center)
                                    ]))),
                        CustomImageView(
                            svgPath: ImageConstant.imgCut,
                            height: 39.v,
                            width: 32.h)
                      ])),
                  SizedBox(height: 66.v),
                  // Text("Enter Password",
                  //     style: CustomTextStyles.titleMediumBluegray900_3),
                  // CustomPinCodeTextField(
                  //     context: context,
                  //     margin: EdgeInsets.only(
                  //         left: 38.h, top: 69.v, right: 39.h),
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
                                padding: const EdgeInsets.only(left: 30),
                                child: Container(
                                  child: TextField(
                                    //keyboardType: TextInputType.phone,
                                    controller: number_controller,
                                    focusNode: first,
                                    textInputAction: TextInputAction.next,
                                    onSubmitted: (_) {
                                      FocusScope.of(context)
                                          .requestFocus(second);
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
                                      FocusScope.of(context)
                                          .requestFocus(third);
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
                                      FocusScope.of(context)
                                          .requestFocus(fourth);
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
                                onTapConfirm(context);
                              },
                            ),
                          )
                        ],
                      )),
                ],
              ),
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

  /// Navigates to the waterBillReceiptScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the waterBillReceiptScreen.
  Future<void> onTapConfirm(BuildContext context) async {
    String dig1 = number_controller.text;
    String dig2 = number_controller1.text;
    String dig3 = number_controller2.text;
    String dig4 = number_controller3.text;
    String pin = dig1 + dig2 + dig3 + dig4;

    var response = await http.post(
      Uri.parse("http://localhost:5000/water_bill"),
      headers: {
        "Content-Type": "application/json",
        "token": "token",
        "pin": pin
      },
      body: jsonEncode({"event": "bill_payment", "scheme": "water_bill"}),
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
