import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/birthday_gift_gift_card_confirmation_successful_transfer_screen/birthday_gift_gift_card_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:provider/provider.dart';
import '../customer_id_provider.dart';

// ignore_for_file: must_be_immutable
class BirthdayPasswordScreen extends StatelessWidget {
  var name, accNo, amt;
  final number_controller = TextEditingController();
  final number_controller1 = TextEditingController();
  final number_controller2 = TextEditingController();
  final number_controller3 = TextEditingController();
  final FocusNode first = FocusNode();
  final FocusNode second = FocusNode();
  final FocusNode third = FocusNode();
  final FocusNode fourth = FocusNode();

  Future<void> onTapConfirm(BuildContext context, dynamic cid) async {
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
      String dig1 = number_controller.text;
      String dig2 = number_controller1.text;
      String dig3 = number_controller2.text;
      String dig4 = number_controller3.text;
      String pin = dig1 + dig2 + dig3 + dig4;

      if (cid != null) {
        var response = await http.post(
          Uri.parse("http://localhost:5000/payment_interface"),
          headers: {
            "Content-Type": "application/json",
            "token": cid,
            "pin": pin
          },
          body: jsonEncode({"event": "gift_card", "scheme": "birthday"}),
        );

        if (response.statusCode == 200) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    BirthdayGiftGiftCardConfirmationSuccessfulTransferScreen(),
              ));
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
          Navigator.pushNamed(context, AppRoutes.loginScreen);
        } else {
          ///Some error occured
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Error'),
                content: Text('Some error occured. Please try again later.'),
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
        }
      } else {
        Navigator.pushNamed(context, AppRoutes.loginScreen);
      }
    }
  }

  BirthdayPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var customerId = Provider.of<CustomerIdProvider>(context).customerId;
    if (customerId != null)
      customerId = customerId;
    else
      customerId = 'Pay';

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
                title: AppbarSubtitle2(text: customerId),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: SizedBox(
                width: 429.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 11.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 803.v,
                              width: 368.h,
                              margin: EdgeInsets.symmetric(horizontal: 30.h),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 28.h, right: 24.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse1752,
                                                  height: 75.adaptSize,
                                                  width: 75.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      37.h),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              SizedBox(height: 137.v),
                                              // Text("Enter Password",
                                              //     style: CustomTextStyles
                                              //         .titleMediumWhiteA700_1),
                                              // CustomPinCodeTextField(
                                              //     context: context,
                                              //     margin: EdgeInsets.only(
                                              //         left: 12.h,
                                              //         top: 78.v,
                                              //         right: 13.h),
                                              //     onChanged: (value) {}),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 60),
                                                child: Align(
                                                    alignment: Alignment.center,
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          'Enter Password',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 17.0),
                                                        ),
                                                        SizedBox(height: 20.0),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 0),
                                                              child: Container(
                                                                child:
                                                                    TextField(
                                                                  //keyboardType: TextInputType.phone,
                                                                  controller:
                                                                      number_controller,
                                                                  focusNode:
                                                                      first,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .next,
                                                                  onSubmitted:
                                                                      (_) {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .requestFocus(
                                                                            second);
                                                                  },
                                                                  inputFormatters: <TextInputFormatter>[
                                                                    FilteringTextInputFormatter
                                                                        .digitsOnly,
                                                                    LengthLimitingTextInputFormatter(
                                                                        1)
                                                                  ],
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          25),
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .phone,
                                                                ),
                                                                width: 58.0,
                                                                height: 58.0,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                            .grey[
                                                                        200],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10)),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 15),
                                                              child: Container(
                                                                child:
                                                                    TextField(
                                                                  controller:
                                                                      number_controller1,
                                                                  focusNode:
                                                                      second,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .next,
                                                                  onSubmitted:
                                                                      (_) {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .requestFocus(
                                                                            third);
                                                                  },
                                                                  inputFormatters: <TextInputFormatter>[
                                                                    FilteringTextInputFormatter
                                                                        .digitsOnly,
                                                                    LengthLimitingTextInputFormatter(
                                                                        1)
                                                                  ],
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          25),
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .phone,
                                                                ),
                                                                width: 58.0,
                                                                height: 58.0,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                            .grey[
                                                                        200],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10)),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 25),
                                                              child: Container(
                                                                child:
                                                                    TextField(
                                                                  controller:
                                                                      number_controller2,
                                                                  focusNode:
                                                                      third,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .next,
                                                                  onSubmitted:
                                                                      (_) {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .requestFocus(
                                                                            fourth);
                                                                  },
                                                                  inputFormatters: <TextInputFormatter>[
                                                                    FilteringTextInputFormatter
                                                                        .digitsOnly,
                                                                    LengthLimitingTextInputFormatter(
                                                                        1)
                                                                  ],
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          25),
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .phone,
                                                                ),
                                                                width: 58.0,
                                                                height: 58.0,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                            .grey[
                                                                        200],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10)),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 25),
                                                              child: Container(
                                                                child:
                                                                    TextField(
                                                                  controller:
                                                                      number_controller3,
                                                                  focusNode:
                                                                      fourth,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .done,
                                                                  inputFormatters: <TextInputFormatter>[
                                                                    FilteringTextInputFormatter
                                                                        .digitsOnly,
                                                                    LengthLimitingTextInputFormatter(
                                                                        1)
                                                                  ],
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          25),
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .phone,
                                                                ),
                                                                width: 58.0,
                                                                height: 58.0,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                            .grey[
                                                                        200],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 140),
                                                          child:
                                                              CustomElevatedButton(
                                                            text: 'Confirm',
                                                            width: 350,
                                                            onTap: () {
                                                              onTapConfirm(
                                                                  context,
                                                                  customerId);
                                                            },
                                                          ),
                                                        )
                                                      ],
                                                    )),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin: EdgeInsets.only(top: 43.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 52.h,
                                                vertical: 12.v),
                                            decoration: AppDecoration
                                                .fillGray50001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 54.h,
                                                          top: 42.v),
                                                      child: Text(
                                                          "David Miller",
                                                          style: theme.textTheme
                                                              .headlineMedium)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 84.h, top: 6.v),
                                                      child: Text("1******2135",
                                                          style: CustomTextStyles
                                                              .titleMedium16_1)),
                                                  SizedBox(height: 19.v),
                                                  Container(
                                                      width: 249.h,
                                                      padding:
                                                          EdgeInsets.all(8.h),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Colors.red[100],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "Transactions Status:",
                                                                    style: CustomTextStyles
                                                                        .titleMediumPrimary),
                                                                TextSpan(
                                                                    text:
                                                                        " Pending",
                                                                    style: CustomTextStyles
                                                                        .titleMediumPrimary)
                                                              ]),
                                                          textAlign: TextAlign
                                                              .center)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 52.h,
                                                          top: 16.v),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "150.00",
                                                                    style: theme
                                                                        .textTheme
                                                                        .displaySmall),
                                                                TextSpan(
                                                                    text: "INR",
                                                                    style: CustomTextStyles
                                                                        .titleLargeSecondaryContainer_2)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])))
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

  /// Navigates to the marriageGiftConfirmationSuccessfulTransferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the marriageGiftConfirmationSuccessfulTransferScreen.
}
