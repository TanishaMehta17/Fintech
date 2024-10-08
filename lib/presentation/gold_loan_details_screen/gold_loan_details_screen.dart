import 'package:tanisha_s_application14/presentation/gold_loan_payment_screen/gold_loan_payment_screen.dart';

import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class GoldLoanDetailsScreen extends StatefulWidget {
  GoldLoanDetailsScreen({Key? key}) : super(key: key);

  @override
  State<GoldLoanDetailsScreen> createState() => _GoldLoanDetailsScreenState();
}

class _GoldLoanDetailsScreenState extends State<GoldLoanDetailsScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController nameController = TextEditingController();

  TextEditingController cnicController = TextEditingController();

  TextEditingController mobileController = TextEditingController();

  TextEditingController checkmarktwoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 87.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 40.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "Payment Plan", margin: EdgeInsets.only(left: 66.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 19.h, vertical: 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 40.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19.h, vertical: 20.v),
                              decoration: AppDecoration.outlineBlueGray
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomIconButton(
                                        height: 49.v,
                                        width: 50.h,
                                        padding: EdgeInsets.all(12.h),
                                        decoration:
                                            IconButtonStyleHelper.fillPrimary,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgMenu)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, bottom: 4.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Gold Loan",
                                                  style: CustomTextStyles
                                                      .titleLargeBluegray900_1),
                                              SizedBox(height: 5.v),
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "Amount:",
                                                        style: CustomTextStyles
                                                            .bodyMediumPink20014),
                                                    TextSpan(text: " "),
                                                    TextSpan(
                                                        text: "15000.00",
                                                        style: CustomTextStyles
                                                            .titleSmallPrimary14_1),
                                                    TextSpan(
                                                        text: "INR",
                                                        style: CustomTextStyles
                                                            .arialBluegray900Bold)
                                                  ]),
                                                  textAlign: TextAlign.left)
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.h, top: 45.v),
                                  child: Text("Duration",
                                      style: CustomTextStyles
                                          .titleMediumBluegray90019))),
                          SizedBox(height: 12.v),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: RawChip(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.h,
                                    vertical: 13.v,
                                  ),
                                  showCheckmark: false,
                                  labelPadding: EdgeInsets.zero,
                                  label: Text(
                                    "6 Months",
                                    style: TextStyle(
                                      color:
                                          theme.colorScheme.secondaryContainer,
                                      fontSize: 18.fSize,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  selected: false,
                                  backgroundColor:
                                      const Color.fromARGB(255, 245, 221, 219),
                                  selectedColor: appTheme.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      7.h,
                                    ),
                                  ),
                                  onSelected: (value) {},
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: RawChip(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.h,
                                    vertical: 13.v,
                                  ),
                                  showCheckmark: false,
                                  labelPadding: EdgeInsets.zero,
                                  label: Text(
                                    "8 Months",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 18.fSize,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  selected: false,
                                  backgroundColor: appTheme.pink200,
                                  selectedColor: appTheme.pink200,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      7.h,
                                    ),
                                  ),
                                  onSelected: (value) {},
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: RawChip(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.h,
                                    vertical: 13.v,
                                  ),
                                  showCheckmark: false,
                                  labelPadding: EdgeInsets.zero,
                                  label: Text(
                                    "10 Months",
                                    style: TextStyle(
                                      color:
                                          theme.colorScheme.secondaryContainer,
                                      fontSize: 18.fSize,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  selected: false,
                                  backgroundColor:
                                      const Color.fromARGB(255, 245, 221, 219),
                                  selectedColor: appTheme.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      7.h,
                                    ),
                                  ),
                                  onSelected: (value) {},
                                ),
                              )
                            ],
                          ),
                          // Wrap(
                          //     runSpacing: 12.v,
                          //     spacing: 12.h,
                          //     children: List<Widget>.generate(
                          //         3, (index) => Chipview6ItemWidget())),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 21.h, top: 45.v),
                                        child: Text("Enter Your Information",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019))),
                                CustomTextFormField(
                                    controller: nameController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Name cannot be empty';
                                      }
                                      return null;
                                    },
                                    margin: EdgeInsets.only(
                                        left: 21.h, top: 11.v, right: 1.h),
                                    hintText: "Name",
                                    hintStyle: theme.textTheme.bodyLarge!,
                                    borderDecoration: TextFormFieldStyleHelper
                                        .outlinePrimaryTL10,
                                    fillColor: appTheme.whiteA700),
                                CustomTextFormField(
                                    controller: cnicController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Amount cannot be empty';
                                      }
                                      if (double.tryParse(value) == null) {
                                        return 'Please enter a valid number';
                                      }
                                      return null;
                                    },
                                    margin: EdgeInsets.only(
                                        left: 21.h, top: 12.v, right: 1.h),
                                    hintText: "CNIC",
                                    hintStyle: theme.textTheme.bodyLarge!),
                                CustomTextFormField(
                                    controller: mobileController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Mobile Number cannot be empty';
                                      }
                                      if (value.length != 10) {
                                        return 'Mobile Number must be 10 digits';
                                      }
                                      return null;
                                    },
                                    margin: EdgeInsets.only(
                                        left: 21.h, top: 12.v, right: 1.h),
                                    hintText: "Mobile",
                                    hintStyle: theme.textTheme.bodyLarge!,
                                    textInputType: TextInputType.phone),
                                CustomTextFormField(
                                  controller: checkmarktwoController,
                                  margin: EdgeInsets.only(
                                      left: 21.h, top: 12.v, right: 1.h),
                                  hintText: "Pasword",
                                  hintStyle: theme.textTheme.bodyLarge!,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  // suffix: Container(
                                  //     margin: EdgeInsets.fromLTRB(
                                  //         30.h, 21.v, 23.h, 20.v),
                                  //     child: CustomImageView(
                                  //         svgPath: ImageConstant
                                  //             .imgCheckmarkSecondarycontainer17x22)),
                                  // suffixConstraints:
                                  //     BoxConstraints(maxHeight: 60.v),
                                  // obscureText: true,
                                  // contentPadding: EdgeInsets.only(
                                  //     left: 30.h, top: 10.v, bottom: 20.v)
                                  suffix: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        passwordVisible = !passwordVisible;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 20.v, 13.h, 20.v),
                                      child: Icon(
                                        passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: appTheme.pink200,
                                      ),
                                    ),
                                  ),
                                  obscureText: !passwordVisible,
                                  contentPadding: EdgeInsets.only(
                                    left: 20.h,
                                    top: 22.v,
                                    bottom: 22.v,
                                  ),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.fillWhiteA,
                                  fillColor: appTheme.whiteA700,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Password cannot be empty';
                                    }
                                    if (value.length < 6) {
                                      return 'Password must be at least 6 characters long';
                                    }
                                    return null;
                                  },
                                ),
                                CustomElevatedButton(
                                  text: "Continue",
                                  margin: EdgeInsets.fromLTRB(
                                      46.h, 45.v, 26.h, 4.v),
                                  onTap: () {
                                    if (_formKey.currentState!.validate()) {
                                      onTapContinue(context);
                                    }
                                  },
                                )
                              ],
                            ),
                          ),
                        ]))),
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

  bool isValidCNIC(String cnic) {
    // Implement your CNIC validation logic here.
    return true;
  }

  /// Navigates to the goldLoanPaymentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the goldLoanPaymentScreen.
  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.goldLoanPaymentScreen);
  // }
  onTapContinue(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              GoldLoanPaymentScreen(cnicController.text.toString())),
    );
  }
}
