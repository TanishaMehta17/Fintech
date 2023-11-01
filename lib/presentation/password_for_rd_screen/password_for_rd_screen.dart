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

// ignore_for_file: must_be_immutable
class PasswordForRdScreen extends StatelessWidget {
  final number_controller = TextEditingController();
  final number_controller1 = TextEditingController();
  final number_controller2 = TextEditingController();
  final number_controller3 = TextEditingController();
  final FocusNode first = FocusNode();
  final FocusNode second = FocusNode();
  final FocusNode third = FocusNode();
  final FocusNode fourth = FocusNode();
  PasswordForRdScreen({Key? key}) : super(key: key);

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
                width: 429.h,
                padding: EdgeInsets.symmetric(horizontal: 56.h, vertical: 53.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.v),
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0XFFA4A9AE).withOpacity(0.25)),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgClock,
                            height: 46.v,
                            width: 41.h),
                      ),
                      SizedBox(height: 19.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("RD",
                              style: CustomTextStyles.titleLargeBluegray90022)),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, top: 51.v),
                          child: Text("Enter Password",
                              style: CustomTextStyles.titleLargeBluegray90022)),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 5.0)),
                          Container(
                            width: 58.0,
                            height: 58.0,
                            color: Color(0XFFA4A9AE).withOpacity(0.15),
                            child: TextField(
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
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 58.0,
                              height: 58.0,
                              color: Color(0XFFA4A9AE).withOpacity(0.15),
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
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 58.0,
                              height: 58.0,
                              color: Color(0XFFA4A9AE).withOpacity(0.15),
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
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 58.0,
                              height: 58.0,
                              color: Color(0XFFA4A9AE).withOpacity(0.15),
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
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        text: "Confirm",
                        onTap: () {
                          onTapConfirmPay(context);
                        },
                      )
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

  onTapConfirmPay(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.rdConfirmationSuccessfulTransferScreen);
  }
}
