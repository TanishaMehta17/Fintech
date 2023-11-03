import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/spotify_payment_one_screen/spotify_payment_one_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SpotifyPaymentScreen extends StatelessWidget {
  SpotifyPaymentScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController renewdaysoneController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

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
                title: AppbarSubtitle2(text: "Spotify Payment"),
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
                                                vertical: 15.v),
                                            decoration: AppDecoration
                                                .outlineBluegray500111
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgSpotify1,
                                                      height: 51.v,
                                                      width: 49.h),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16.h,
                                                          top: 4.v,
                                                          bottom: 2.v),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Spotify",
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
                                                                              " "),
                                                                      TextSpan(
                                                                          text:
                                                                              "13/04",
                                                                          style:
                                                                              CustomTextStyles.titleSmallPrimary14_1)
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left)
                                                          ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 50.h,
                                                          top: 12.v,
                                                          bottom: 13.v),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "300.00",
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
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  child: CustomTextFormField(
                                                      width: 178.h,
                                                      controller: cvvController,
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
                                                      hintText: "Postal Code",
                                                      hintStyle: theme
                                                          .textTheme.bodyLarge!,
                                                      textInputAction:
                                                          TextInputAction
                                                              .done)),
                                              CustomTextFormField(
                                                  width: 178.h,
                                                  controller: stateController,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'State cannot be empty';
                                                    }
                                                    return null;
                                                  },
                                                  fillColor: Color(0XFFA4A9AE)
                                                      .withOpacity(0.15),
                                                  hintText: "State",
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!)
                                            ]),
                                        SizedBox(height: 11.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomTextFormField(
                                                  width: 178.h,
                                                  controller: cityController,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'City cannot be empty';
                                                    }
                                                    return null;
                                                  },
                                                  fillColor: Color(0XFFA4A9AE)
                                                      .withOpacity(0.15),
                                                  hintText: "City",
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!),
                                              Container(
                                                  child: CustomTextFormField(
                                                      width: 178.h,
                                                      controller: cvvController,
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
                                                      hintText: "Country",
                                                      hintStyle: theme
                                                          .textTheme.bodyLarge!,
                                                      textInputAction:
                                                          TextInputAction.done))
                                            ]),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: renewdaysoneController,
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
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  child: CustomTextFormField(
                                                      width: 178.h,
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
                                                      hintText: "MM/YY",
                                                      hintStyle: theme
                                                          .textTheme.bodyLarge!,
                                                      textInputAction:
                                                          TextInputAction
                                                              .done)),
                                              CustomTextFormField(
                                                  width: 178.h,
                                                  controller: cvvController,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'This cannot be empty';
                                                    }
                                                    return null;
                                                  },
                                                  fillColor: Color(0XFFA4A9AE)
                                                      .withOpacity(0.15),
                                                  hintText: "CVV",
                                                  hintStyle: theme
                                                      .textTheme.bodyLarge!,
                                                  textInputAction:
                                                      TextInputAction.done)
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

  /// Navigates to the spotifyPaymentOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the spotifyPaymentOneScreen.
  // onTapSend(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.spotifyPaymentOneScreen);
  // }
  onTapSend(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              SpotifyPaymentOneScreen(cardNumberController.text.toString())),
    );
  }
}
