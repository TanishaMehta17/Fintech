import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/netfiix_payment_amount_screen/netfiix_payment_amount_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NetflixPaymentScreen extends StatelessWidget {
  NetflixPaymentScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController postalcodeController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirydateoneController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "Netflix Payment",
                    margin: EdgeInsets.only(left: 55.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 30.h, vertical: 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 4.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 29.h, right: 29.h, bottom: 9.v),
                                  child: Column(children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21.h, vertical: 15.v),
                                        decoration: AppDecoration
                                            .outlineBluegray500111
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgNetflix1,
                                                  height: 51.adaptSize,
                                                  width: 51.adaptSize),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 15.h, top: 2.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Netflix",
                                                            style: CustomTextStyles
                                                                .titleMediumBluegray90016),
                                                        SizedBox(height: 11.v),
                                                        RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          "Next Payment: ",
                                                                      style: CustomTextStyles
                                                                          .titleSmallGray50001),
                                                                  TextSpan(
                                                                      text:
                                                                          "12/04",
                                                                      style: CustomTextStyles
                                                                          .titleSmallPrimary14_1)
                                                                ]),
                                                            textAlign:
                                                                TextAlign.left)
                                                      ])),
                                              Spacer(),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 12.v,
                                                      right: 1.h,
                                                      bottom: 13.v),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "500.00",
                                                            style: CustomTextStyles
                                                                .titleLargeBluegray900),
                                                        TextSpan(
                                                            text: "INR",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left))
                                            ])),
                                    SizedBox(height: 9.v),
                                    Text("Add Information",
                                        style: CustomTextStyles
                                            .titleLargeBluegray900_1),
                                    SizedBox(height: 8.v),
                                    CustomTextFormField(
                                        controller: firstNameController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Name cannot be empty';
                                          }
                                          return null;
                                        },
                                        fillColor:
                                            Color.fromARGB(15, 157, 152, 156)
                                                .withOpacity(0.18),
                                        hintText: "First Name",
                                        hintStyle: theme.textTheme.bodyLarge!),
                                    SizedBox(height: 9.v),
                                    CustomTextFormField(
                                        controller: lastNameController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Name cannot be empty';
                                          }
                                          return null;
                                        },
                                        fillColor:
                                            Color.fromARGB(15, 157, 152, 156)
                                                .withOpacity(0.18),
                                        hintText: "Last Name",
                                        hintStyle: theme.textTheme.bodyLarge!),
                                    SizedBox(height: 9.v),
                                    CustomTextFormField(
                                        controller: addressController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Address cannot be empty';
                                          }
                                          return null;
                                        },
                                        fillColor:
                                            Color.fromARGB(15, 157, 152, 156)
                                                .withOpacity(0.18),
                                        hintText: "Address",
                                        hintStyle: theme.textTheme.bodyLarge!),
                                    SizedBox(height: 9.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller:
                                                      postalcodeController,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Postal code cannot be empty';
                                                    }

                                                    // Define a regular expression for postal codes (adjust as per your country's format)
                                                    final RegExp
                                                        postalCodeRegex =
                                                        RegExp(
                                                            r'^\d{5}$'); // Example: 5 digits (US format)

                                                    if (!postalCodeRegex
                                                        .hasMatch(value)) {
                                                      return 'Please enter a valid postal code';
                                                    }

                                                    return null; // Valid postal code
                                                  },
                                                  fillColor: Color.fromARGB(
                                                          15, 157, 152, 156)
                                                      .withOpacity(0.18),
                                                  margin: EdgeInsets.only(
                                                      right: 5.h),
                                                  hintText: "Postal Code",
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!)),
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller: stateController,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'State cannot be empty';
                                                    }
                                                    return null;
                                                  },
                                                  fillColor: Color.fromARGB(
                                                          15, 157, 152, 156)
                                                      .withOpacity(0.18),
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                  hintText: "State",
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!))
                                        ]),
                                    SizedBox(height: 9.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller: cityController,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'City cannot be empty';
                                                    }
                                                    return null;
                                                  },
                                                  fillColor: Color.fromARGB(
                                                          15, 157, 152, 156)
                                                      .withOpacity(0.18),
                                                  margin: EdgeInsets.only(
                                                      right: 5.h),
                                                  hintText: "City",
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!)),
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller: countryController,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Country cannot be empty';
                                                    }
                                                    return null;
                                                  },
                                                  fillColor: Color.fromARGB(
                                                          15, 157, 152, 156)
                                                      .withOpacity(0.18),
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                  hintText: "Country",
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!))
                                        ]),
                                    SizedBox(height: 9.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Add Account Details",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019)),
                                    SizedBox(height: 16.v),
                                    CustomTextFormField(
                                        controller: nameController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Name cannot be empty';
                                          }
                                          return null;
                                        },
                                        fillColor:
                                            Color.fromARGB(15, 157, 152, 156)
                                                .withOpacity(0.18),
                                        hintText: "Card Holder Name",
                                        hintStyle: theme.textTheme.bodyLarge!),
                                    SizedBox(height: 9.v),
                                    CustomTextFormField(
                                        controller: cardNumberController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'This cannot be empty';
                                          }
                                          return null;
                                        },
                                        fillColor:
                                            Color.fromARGB(15, 157, 152, 156)
                                                .withOpacity(0.18),
                                        hintText: "Card Number",
                                        hintStyle: theme.textTheme.bodyLarge!,
                                        textInputType: TextInputType.number),
                                    SizedBox(height: 9.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller:
                                                      expirydateoneController,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'This cannot be empty';
                                                    }
                                                    return null;
                                                  },
                                                  fillColor: Color.fromARGB(
                                                          15, 157, 152, 156)
                                                      .withOpacity(0.18),
                                                  margin: EdgeInsets.only(
                                                      right: 5.h),
                                                  hintText: "MM/YY",
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!)),
                                          Expanded(
                                              child: CustomTextFormField(
                                                  controller: cvvController,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'This cannot be empty';
                                                    }
                                                    return null;
                                                  },
                                                  fillColor: Color.fromARGB(
                                                          15, 157, 152, 156)
                                                      .withOpacity(0.18),
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                  hintText: "CVV",
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!,
                                                  textInputAction:
                                                      TextInputAction.done))
                                        ]),
                                    CustomElevatedButton(
                                      text: "Send",
                                      margin: EdgeInsets.only(
                                          left: 26.h, top: 9.v, right: 26.h),
                                      onTap: () {
                                        if (_formKey.currentState!.validate()) {
                                          onTapSend(context);
                                        }
                                      },
                                    )
                                  ]))))
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

  /// Navigates to the netfiixPaymentAmountScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the netfiixPaymentAmountScreen.
  // onTapSend(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.netfiixPaymentAmountScreen);
  // }
  onTapSend(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              NetfiixPaymentAmountScreen(cardNumberController.text.toString())),
    );
  }
}
