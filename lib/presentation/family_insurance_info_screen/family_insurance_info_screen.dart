import 'package:tanisha_s_application14/presentation/family_insurance_confirmation_screen/family_insurance_confirmation_screen.dart';

import '../family_insurance_info_screen/widgets/chipviewmonthly2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FamilyInsuranceInfoScreen extends StatelessWidget {
  FamilyInsuranceInfoScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController group6728Controller = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController group6729Controller = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController mmyyController = TextEditingController();

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
                centerTitle: true,
                title: AppbarSubtitle2(text: "Insurance"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 26.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 30.h, right: 30.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: 253.v,
                                            width: 368.h,
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          padding: EdgeInsets.symmetric(
                                                              horizontal: 22.h,
                                                              vertical: 27.v),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10,
                                                              image: DecorationImage(
                                                                  image: fs.Svg(
                                                                      ImageConstant
                                                                          .imgGroup6784),
                                                                  fit: BoxFit
                                                                      .cover)),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        155.v),
                                                                Text(
                                                                    "Family Insurance",
                                                                    style: CustomTextStyles
                                                                        .titleLargeBluegray900_1),
                                                                SizedBox(
                                                                    height:
                                                                        2.v),
                                                                Text(
                                                                    "Family plans cover two or more members.",
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium)
                                                              ]))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle1467155x368,
                                                      height: 155.v,
                                                      width: 368.h,
                                                      radius:
                                                          BorderRadius.vertical(
                                                              top: Radius
                                                                  .circular(
                                                                      10.h)),
                                                      alignment:
                                                          Alignment.topCenter)
                                                ])),
                                        SizedBox(height: 37.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("Add Information",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray90019)),
                                        SizedBox(height: 16.v),
                                        CustomTextFormField(
                                            controller: firstNameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'This cannot be empty';
                                              }
                                              return null;
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "First Name",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 17.v),
                                        CustomTextFormField(
                                            controller: lastNameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'This cannot be empty';
                                              }
                                              return null;
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "Last Name",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 17.v),
                                        CustomTextFormField(
                                            controller: group6728Controller,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'This cannot be empty';
                                              }
                                              if (double.tryParse(value) ==
                                                  null) {
                                                return 'Please enter a valid number';
                                              }
                                              return null;
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "Total Family Members",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 17.v),
                                        CustomTextFormField(
                                            controller: dateController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Date cannot be empty';
                                              }

                                              if (_isValidDate(value)) {
                                                return null; // Valid date
                                              }

                                              return 'Please enter a valid date in the format MM/DD/YYYY';
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "Payment Date",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 17.v),
                                        CustomTextFormField(
                                            controller: group6729Controller,
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText:
                                                "Purpose of payment (Optional)",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 17.v),
                                        Text("Add Account Details",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019),
                                        SizedBox(height: 8.v),
                                        CustomTextFormField(
                                            controller: nameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Name cannot be empty';
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
                                                          mmyyController,
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
                                        SizedBox(height: 57.v),
                                        Text("Payment Plan",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019),
                                        SizedBox(height: 18.v),
                                        Row(
                                          children: [
                                            RawChip(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 25.h,
                                                vertical: 14.v,
                                              ),
                                              showCheckmark: false,
                                              labelPadding: EdgeInsets.zero,
                                              label: Text(
                                                "Monthly",
                                                style: TextStyle(
                                                  color: theme.colorScheme
                                                      .secondaryContainer,
                                                  fontSize: 17.fSize,
                                                  fontFamily: 'Arial',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              selected: false,
                                              backgroundColor: appTheme
                                                  .gray50001
                                                  .withOpacity(0.15),
                                              selectedColor: appTheme.whiteA700,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide.none,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  7.h,
                                                ),
                                              ),
                                              onSelected: (value) {},
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: RawChip(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 25.h,
                                                  vertical: 14.v,
                                                ),
                                                showCheckmark: false,
                                                labelPadding: EdgeInsets.zero,
                                                label: Text(
                                                  "Quarterly",
                                                  style: TextStyle(
                                                    color: Colors.redAccent,
                                                    fontSize: 17.fSize,
                                                    fontFamily: 'Arial',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                selected: false,

                                                // selectedColor:
                                                //     appTheme.whiteA700,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    7.h,
                                                  ),
                                                ),
                                                onSelected: (value) {},
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: RawChip(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 25.h,
                                                  vertical: 14.v,
                                                ),
                                                showCheckmark: false,
                                                labelPadding: EdgeInsets.zero,
                                                label: Text(
                                                  "Yearly",
                                                  style: TextStyle(
                                                    color: theme.colorScheme
                                                        .secondaryContainer,
                                                    fontSize: 17.fSize,
                                                    fontFamily: 'Arial',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                selected: false,
                                                backgroundColor: appTheme
                                                    .gray50001
                                                    .withOpacity(0.15),
                                                selectedColor:
                                                    appTheme.whiteA700,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    7.h,
                                                  ),
                                                ),
                                                onSelected: (value) {},
                                              ),
                                            ),
                                          ],
                                        ),
                                        // Wrap(
                                        //     runSpacing: 12.v,
                                        //     spacing: 12.h,
                                        //     children: List<Widget>.generate(
                                        //         3,
                                        //         (index) =>
                                        //             Chipviewmonthly2ItemWidget())),
                                        CustomElevatedButton(
                                            text: "Continue",
                                            margin: EdgeInsets.only(
                                                left: 26.h,
                                                top: 39.v,
                                                right: 26.h),
                                            onTap: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                onTapContinue(context);
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

  bool _isValidDate(String date) {
    try {
      // Attempt to parse the input as a DateTime object
      DateTime parsedDate = DateTime.parse(date);
      // Check if the parsed date is valid (non-null)
      return parsedDate != null;
    } catch (e) {
      return false; // Parsing failed, so it's not a valid date
    }
  }

  /// Navigates to the familyInsuranceConfirmationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the familyInsuranceConfirmationScreen.
  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.familyInsuranceConfirmationScreen);
  // }
  onTapContinue(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => FamilyInsuranceConfirmationScreen(
              cardNumberController.text.toString())),
    );
  }
}
