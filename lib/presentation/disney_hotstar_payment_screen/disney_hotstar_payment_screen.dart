import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DisneyHotstarPaymentScreen extends StatelessWidget {
  DisneyHotstarPaymentScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController postalcodeController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController frame7827Controller = TextEditingController();

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
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Hotstar Payment"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    child: Column(children: [
                      SizedBox(height: 24.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 29.h, right: 29.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 21.h,
                                                vertical: 14.v),
                                            decoration: AppDecoration
                                                .outlineBluegray500111
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgDownload1,
                                                      height: 51.adaptSize,
                                                      width: 51.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                              10.h),
                                                      margin: EdgeInsets.only(
                                                          bottom: 2.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 15.h,
                                                          top: 4.v,
                                                          bottom: 4.v),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Disney + Hotstar",
                                                                style: CustomTextStyles
                                                                    .titleMediumBluegray90016),
                                                            SizedBox(
                                                                height: 8.v),
                                                            RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text:
                                                                              "Next Payment:",
                                                                          style:
                                                                              CustomTextStyles.titleSmallPink200),
                                                                      TextSpan(
                                                                          text:
                                                                              " 14/04",
                                                                          style:
                                                                              CustomTextStyles.titleSmallPrimary14_1)
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left)
                                                          ])),
                                                  Spacer(),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 12.v,
                                                          bottom: 15.v),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "3.50",
                                                                    style: CustomTextStyles
                                                                        .titleLargeBluegray900_2),
                                                                TextSpan(
                                                                    text: "INR",
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelSmall)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])),
                                        SizedBox(height: 28.v),
                                        Text("Add Information",
                                            style: CustomTextStyles
                                                .titleLargeBluegray900_1),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: firstNameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Name cannot be empty';
                                              }
                                              return null;
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "First Name",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: lastNameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Name cannot be empty';
                                              }
                                              return null;
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "Last Name",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: addressController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Address cannot be empty';
                                              }
                                              return null;
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "Address",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 11.v),
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
                                                      fillColor: Color(
                                                              0XFFA4A9AE)
                                                          .withOpacity(0.15),
                                                      margin: EdgeInsets.only(
                                                          right: 5.h),
                                                      hintText: "Postal Code",
                                                      hintStyle: theme.textTheme
                                                          .bodyLarge!)),
                                              Expanded(
                                                  child: CustomTextFormField(
                                                      controller:
                                                          stateController,
                                                      validator: (value) {
                                                        if (value == null ||
                                                            value.isEmpty) {
                                                          return 'State cannot be empty';
                                                        }
                                                        return null;
                                                      },
                                                      fillColor: Color(
                                                              0XFFA4A9AE)
                                                          .withOpacity(0.15),
                                                      margin: EdgeInsets.only(
                                                          left: 5.h),
                                                      hintText: "State",
                                                      hintStyle: theme.textTheme
                                                          .bodyLarge!))
                                            ]),
                                        SizedBox(height: 11.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: CustomTextFormField(
                                                      controller:
                                                          cityController,
                                                      validator: (value) {
                                                        if (value == null ||
                                                            value.isEmpty) {
                                                          return 'City cannot be empty';
                                                        }
                                                        return null;
                                                      },
                                                      fillColor: Color(
                                                              0XFFA4A9AE)
                                                          .withOpacity(0.15),
                                                      margin: EdgeInsets.only(
                                                          right: 5.h),
                                                      hintText: "City",
                                                      hintStyle: theme.textTheme
                                                          .bodyLarge!)),
                                              Expanded(
                                                  child: CustomTextFormField(
                                                      controller:
                                                          countryController,
                                                      validator: (value) {
                                                        if (value == null ||
                                                            value.isEmpty) {
                                                          return 'Country cannot be empty';
                                                        }
                                                        return null;
                                                      },
                                                      fillColor: Color(
                                                              0XFFA4A9AE)
                                                          .withOpacity(0.15),
                                                      margin: EdgeInsets.only(
                                                          left: 5.h),
                                                      hintText: "Country",
                                                      hintStyle: theme.textTheme
                                                          .bodyLarge!))
                                            ]),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: frame7827Controller,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Amount cannot be empty';
                                              }

                                              if (double.tryParse(value) ==
                                                  null) {
                                                return 'Please enter a valid number';
                                              }
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "Renew in number of Days",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputType:
                                                TextInputType.number),
                                        SizedBox(height: 29.v),
                                        Text("Add Account Details",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019),
                                        SizedBox(height: 8.v),
                                        CustomTextFormField(
                                            controller: nameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'This cannot be empty';
                                              }
                                              return null;
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "Card Holder Name",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 9.v),
                                        CustomTextFormField(
                                            controller: cardNumberController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'This cannot be empty';
                                              }
                                              return null;
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "Card Number",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputType:
                                                TextInputType.number),
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
                                                      fillColor: Color(
                                                              0XFFA4A9AE)
                                                          .withOpacity(0.15),
                                                      margin: EdgeInsets.only(
                                                          right: 5.h),
                                                      hintText: "MM/YY",
                                                      hintStyle: theme.textTheme
                                                          .bodyLarge!)),
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
                                                      fillColor: Color(
                                                              0XFFA4A9AE)
                                                          .withOpacity(0.15),
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
                                                left: 26.h,
                                                top: 29.v,
                                                right: 26.h),
                                            onTap: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                onTapSend(context);
                                              }
                                            },
                                            alignment: Alignment.center)
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

  /// Navigates to the disneyHoststarPaymentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the disneyHoststarPaymentScreen.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.disneyHoststarPaymentScreen);
  }
}
