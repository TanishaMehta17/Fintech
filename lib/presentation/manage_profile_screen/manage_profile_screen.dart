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
class ManageProfileScreen extends StatefulWidget {
  ManageProfileScreen({Key? key}) : super(key: key);

  @override
  State<ManageProfileScreen> createState() => _ManageProfileScreenState();
}

class _ManageProfileScreenState extends State<ManageProfileScreen> {
  bool passwordVisible = false;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                title: AppbarSubtitle2(text: "Profile"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v),
                      onTap: () {
                        onTapCheckmarkone(context);
                      })
                ]),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 36.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 30.h, right: 30.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                height: 89.v,
                                                width: 91.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage128,
                                                          height: 89.adaptSize,
                                                          width: 89.adaptSize,
                                                          radius: BorderRadius
                                                              .circular(44.h),
                                                          alignment:
                                                              Alignment.center),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgDownload,
                                                          height: 20.adaptSize,
                                                          width: 20.adaptSize,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 5.v))
                                                    ]))),
                                        SizedBox(height: 11.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(" Harpreet Singh",
                                                style: CustomTextStyles
                                                    .titleLargePrimary)),
                                        SizedBox(height: 1.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("INDIA",
                                                style: CustomTextStyles
                                                    .titleSmallPink20014)),
                                        SizedBox(height: 25.v),
                                        Text("Your Name",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019_1),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                          controller: nameController,
                                          hintText: " Harpreet Singh",
                                          hintStyle:
                                              CustomTextStyles.titleMedium17,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Name cannot be empty';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(height: 25.v),
                                        Text("Email",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019_1),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                          controller: emailController,
                                          hintText:
                                              " Harpreet Singh123@gmail.com",
                                          hintStyle:
                                              CustomTextStyles.titleMedium17,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Email cannot be empty';
                                            }
                                            if (!isValidEmail(value)) {
                                              return 'Please enter a valid email';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(height: 25.v),
                                        Text("Mobile Number ",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019_1),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                          controller: mobileNumberController,
                                          hintText: "+91 973 369 678",
                                          hintStyle:
                                              CustomTextStyles.titleMedium17,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Mobile Number cannot be empty';
                                            }
                                            if (value.length != 10) {
                                              return 'Mobile Number must be 10 digits';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(height: 25.v),
                                        Text("Password",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019_1),
                                        SizedBox(height: 12.v),
                                        // CustomTextFormField(
                                        //   controller: passwordController,
                                        //   hintText: "**********",
                                        //   hintStyle:
                                        //       CustomTextStyles.titleMedium17,
                                        //   textInputAction: TextInputAction.done,
                                        //   textInputType:
                                        //       TextInputType.visiblePassword,
                                        //   obscureText: true,
                                        //   suffix: GestureDetector(
                                        //     onTap: () {
                                        //       setState(() {
                                        //         passwordVisible =
                                        //             !passwordVisible;
                                        //       });
                                        //     },
                                        //     child: Container(
                                        //       margin: EdgeInsets.fromLTRB(
                                        //           30.h, 20.v, 13.h, 20.v),
                                        //       child: Icon(
                                        //         passwordVisible
                                        //             ? Icons.visibility
                                        //             : Icons.visibility_off,
                                        //         color: appTheme.pink200,
                                        //       ),
                                        //     ),
                                        //   ),
                                        //   // obscureText: !passwordVisible,

                                        //   contentPadding: EdgeInsets.only(
                                        //     left: 20.h,
                                        //     top: 22.v,
                                        //     bottom: 22.v,
                                        //   ),
                                        //   borderDecoration:
                                        //       TextFormFieldStyleHelper
                                        //           .fillWhiteA,
                                        //   fillColor: appTheme.whiteA700,
                                        //   validator: (value) {
                                        //     if (value == null ||
                                        //         value.isEmpty) {
                                        //       return 'Password cannot be empty';
                                        //     }
                                        //     if (value.length < 6) {
                                        //       return 'Password must be at least 6 characters long';
                                        //     }
                                        //     return null;
                                        //   },
                                        // ),
                                        CustomTextFormField(
                                          controller: passwordController,
                                          hintText: "********",
                                          hintStyle: CustomTextStyles
                                              .titleMediumGray5000116_1,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          suffix: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                passwordVisible =
                                                    !passwordVisible;
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
                                              TextFormFieldStyleHelper
                                                  .fillGrayTL10,
                                          fillColor: appTheme.whiteA700,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Password cannot be empty';
                                            }
                                            if (value.length < 6) {
                                              return 'Password must be at least 6 characters long';
                                            }
                                            return null;
                                          },
                                        ),
                                        CustomElevatedButton(
                                          text: "Save",
                                          margin: EdgeInsets.only(
                                              left: 26.h,
                                              top: 30.v,
                                              right: 26.h),
                                          alignment: Alignment.center,
                                          onTap: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              onTapSave(context);
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

  /// Navigates to the notificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationScreen.
  onTapCheckmarkone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardProfileScreen);
  }

  bool isValidEmail(String email) {
    // Implement your email validation logic here.
    // You can use a regular expression to check for a valid email format.
    // For example, a simple format check could be:
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*$');
    return emailRegExp.hasMatch(email);
  }
}
