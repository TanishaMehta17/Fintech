// // import 'package:flutter/material.dart';
// // import 'package:tanisha_s_application14/core/app_export.dart';
// // import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
// // import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// // // ignore_for_file: must_be_immutable
// // class LoginScreen extends StatelessWidget {
// //   LoginScreen({Key? key}) : super(key: key);

// //   TextEditingController useridlabeloneController = TextEditingController();

// //   TextEditingController passwordController = TextEditingController();

// //   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

// //   @override
// //   Widget build(BuildContext context) {
// //     mediaQueryData = MediaQuery.of(context);
// //     return SafeArea(
// //         child: Scaffold(
// //             backgroundColor: appTheme.blueGray900,
// //             resizeToAvoidBottomInset: false,
// //             body: Form(
// //                 key: _formKey,
// //                 child: SizedBox(
// //                     width: double.maxFinite,
// //                     child: Column(children: [
// //                       CustomImageView(
// //                           imagePath: ImageConstant.imgEllipse53,
// //                           height: 223.v,
// //                           width: 428.h),
// //                       Spacer(),
// //                       Text("Login to Your Account",
// //                           style: CustomTextStyles.headlineLargeWhiteA700),
// //                       CustomTextFormField(
// //                           controller: useridlabeloneController,
// //                           margin: EdgeInsets.only(
// //                               left: 56.h, top: 35.v, right: 56.h),
// //                           hintText: "User Id",
// //                           hintStyle: CustomTextStyles.titleMediumGray5000116_1,
// //                           borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
// //                           fillColor: appTheme.whiteA700),
// //                       CustomTextFormField(
// //                         controller: useridlabeloneController,
// //                         margin:
// //                             EdgeInsets.only(left: 56.h, top: 35.v, right: 56.h),
// //                         hintText: "Password",
// //                         hintStyle: CustomTextStyles.titleMediumGray5000116_1,
// //                         borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
// //                         fillColor: appTheme.whiteA700,
// //                         suffix: GestureDetector(
// //                           onTap: () {},
// //                           child: Container(
// //                               padding:
// //                                   EdgeInsets.fromLTRB(30.h, 20.v, 18.h, 20.v),
// //                               margin: EdgeInsets.only(),
// //                               decoration: BoxDecoration(
// //                                   color: appTheme.whiteA700,
// //                                   borderRadius: BorderRadius.circular(10.h)),
// //                               child: CustomImageView(
// //                                   svgPath: ImageConstant
// //                                       .imgCheckmarkSecondarycontainer)),
// //                         ),
// //                         suffixConstraints: BoxConstraints(maxHeight: 63.v),
// //                         obscureText: true,
// //                         contentPadding: EdgeInsets.only(
// //                             left: 23.h, top: 20.v, bottom: 20.v),
// //                         // borderDecoration: TextFormFieldStyleHelper.custom,
// //                         // filled: false),
// //                       ),
// //                       // CustomTextFormField(
// //                       //     controller: passwordController,
// //                       //     margin: EdgeInsets.only(
// //                       //         left: 56.h, top: 33.v, right: 56.h),
// //                       //     hintText: "Password",
// //                       //     hintStyle: CustomTextStyles.titleMediumGray5000116_1,
// //                       //     textInputAction: TextInputAction.done,
// //                       //     textInputType: TextInputType.visiblePassword,
// //                       //     suffix: Container(
// //                       //         padding:
// //                       //             EdgeInsets.fromLTRB(30.h, 20.v, 18.h, 20.v),
// //                       //         margin: EdgeInsets.only(),
// //                       //         decoration: BoxDecoration(
// //                       //             color: appTheme.whiteA700,
// //                       //             borderRadius: BorderRadius.circular(10.h)),
// //                       //         child: CustomImageView(
// //                       //             svgPath: ImageConstant
// //                       //                 .imgCheckmarkSecondarycontainer)),
// //                       //     suffixConstraints: BoxConstraints(maxHeight: 63.v),
// //                       //     obscureText: true,
// //                       //     contentPadding: EdgeInsets.only(
// //                       //         left: 23.h, top: 20.v, bottom: 20.v),
// //                       //     borderDecoration: TextFormFieldStyleHelper.custom,
// //                       //     filled: false),
// //                       CustomElevatedButton(
// //                           text: "Login",
// //                           margin: EdgeInsets.only(
// //                               left: 58.h, top: 33.v, right: 58.h),
// //                           onTap: () {
// //                             //onTapLogin(context);
// //                             //validate();
// //                           }),
// //                       SizedBox(height: 37.v),
// //                       Text("Forget User / Password ?",
// //                           style: theme.textTheme.titleMedium),
// //                       SizedBox(height: 33.v),
// //                       CustomImageView(
// //                           svgPath: ImageConstant.imgFingerprint,
// //                           height: 45.v,
// //                           width: 39.h,
// //                           onTap: () {
// //                             onTapImgFingerprintone(context);
// //                           }),
// //                       SizedBox(height: 37.v),
// //                       GestureDetector(
// //                           onTap: () {
// //                             onTapTxtDonthaveanaccount(context);
// //                           },
// //                           child: RichText(
// //                               text: TextSpan(children: [
// //                                 TextSpan(
// //                                     text: "Don’t have an account? ",
// //                                     style: theme.textTheme.titleMedium),
// //                                 TextSpan(
// //                                     text: "Sign Up",
// //                                     style:
// //                                         CustomTextStyles.titleMediumWhiteA700_2)
// //                               ]),
// //                               textAlign: TextAlign.left)),
// //                       SizedBox(height: 40.v)
// //                     ])))));
// //   }

// //   /// Navigates to the dashboardScreen when the action is triggered.
// //   ///
// //   /// The [BuildContext] parameter is used to build the navigation stack.
// //   /// When the action is triggered, this function uses the [Navigator] widget
// //   /// to push the named route for the dashboardScreen.
// //   onTapLogin(BuildContext context) {
// //     Navigator.pushNamed(context, AppRoutes.dashboardScreen);
// //   }

// //   /// Navigates to the dashboardScreen when the action is triggered.
// //   ///
// //   /// The [BuildContext] parameter is used to build the navigation stack.
// //   /// When the action is triggered, this function uses the [Navigator] widget
// //   /// to push the named route for the dashboardScreen.
// //   onTapImgFingerprintone(BuildContext context) {
// //     Navigator.pushNamed(context, AppRoutes.dashboardScreen);
// //   }

// //   /// Navigates to the signupScreen when the action is triggered.
// //   ///
// //   /// The [BuildContext] parameter is used to build the navigation stack.
// //   /// When the action is triggered, this function uses the [Navigator] widget
// //   /// to push the named route for the signupScreen.
// //   onTapTxtDonthaveanaccount(BuildContext context) {
// //     Navigator.pushNamed(context, AppRoutes.signupScreen);
// //   }

// // }
// import 'package:flutter/material.dart';
// import 'package:tanisha_s_application14/core/app_export.dart';
// import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
// import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// class LoginScreen extends StatelessWidget {
//   LoginScreen({Key? key}) : super(key: key);

//   TextEditingController userIdController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: appTheme.blueGray900,
//         body: Form(
//           key: _formKey,
//           child: Padding(
//             padding: const EdgeInsets.only(top: 180),
//             child: Column(
//               children: [
//                 CustomTextFormField(
//                   controller: userIdController,
//                   margin: EdgeInsets.only(left: 56.h, top: 35.v, right: 56.h),
//                   hintText: "User ID",
//                   hintStyle: CustomTextStyles.titleMediumGray5000116_1,
//                   borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
//                   fillColor: appTheme.whiteA700,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'User ID cannot be empty';
//                     }
//                     return null;
//                   },
//                 ),
//                 CustomTextFormField(
//                   controller: passwordController,
//                   margin: EdgeInsets.only(left: 56.h, top: 35.v, right: 56.h),
//                   hintText: "Password",
//                   hintStyle: CustomTextStyles.titleMediumGray5000116_1,
//                   borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
//                   fillColor: appTheme.whiteA700,
//                   suffix: GestureDetector(
//                     onTap: () {},
//                     child: Container(
//                       padding: EdgeInsets.fromLTRB(30.h, 20.v, 18.h, 20.v),
//                       margin: EdgeInsets.only(),
//                       decoration: BoxDecoration(
//                         color: appTheme.whiteA700,
//                         borderRadius: BorderRadius.circular(10.h),
//                       ),
//                       child: CustomImageView(
//                         svgPath: ImageConstant.imgCheckmarkSecondarycontainer,
//                       ),
//                     ),
//                   ),
//                   suffixConstraints: BoxConstraints(maxHeight: 63.v),
//                   obscureText: true,
//                   contentPadding: EdgeInsets.only(
//                     left: 23.h,
//                     top: 20.v,
//                     bottom: 20.v,
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Password cannot be empty';
//                     } else if (value.length < 6) {
//                       return 'Password must be at least 6 characters long';
//                     }
//                     return null;
//                   },
//                 ),
//                 CustomElevatedButton(
//                   text: "Login",
//                   margin: EdgeInsets.only(left: 58.h, top: 33.v, right: 58.h),
//                   onTap: () {
//                     if (_formKey.currentState!.validate()) {
//                       // Validation passed, navigate to the main screen.
//                       onTapLogin(context);
//                     }
//                   },
//                 ),
//                 SizedBox(height: 37.v),
//                 GestureDetector(
//                   onTap: () {
//                     onTapForget(context);
//                   },
//                   child: Text("Forget User / Password ?",
//                       style: theme.textTheme.titleMedium),
//                 ),
//                 SizedBox(height: 33.v),
//                 // ... other widgets
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   onTapLogin(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.dashboardScreen);
//   }

//   onTapImgFingerprintone(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.dashboardScreen);
//   }

//   onTapTxtDonthaveanaccount(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.signupScreen);
//   }

//   onTapForget(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.mobileNumberPinChangeScreen);
//   }
// }
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray900,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              children: [
                CustomTextFormField(
                  controller: userIdController,
                  margin: EdgeInsets.only(left: 56.h, top: 35.v, right: 56.h),
                  hintText: "User ID",
                  hintStyle: CustomTextStyles.titleMediumGray5000116_1,
                  borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                  fillColor: appTheme.whiteA700,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'User ID cannot be empty';
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  controller: passwordController,
                  margin: EdgeInsets.only(left: 56.h, top: 35.v, right: 56.h),
                  hintText: "Password",
                  hintStyle: CustomTextStyles.titleMediumGray5000116_1,
                  borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                  fillColor: appTheme.whiteA700,
                  obscureText: !passwordVisible,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                  suffix: GestureDetector(
                    onTap: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(),
                      child: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: appTheme.pink200,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(maxHeight: 63.v),
                ),
                CustomElevatedButton(
                  text: "Login",
                  margin: EdgeInsets.only(left: 58.h, top: 33.v, right: 58.h),
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      onTapLogin(context);
                    }
                  },
                ),
                SizedBox(height: 37.v),
                GestureDetector(
                  onTap: () {
                    onTapForget(context);
                  },
                  child: Text("Forget User / Password ?",
                      style: theme.textTheme.titleMedium),
                ),
                SizedBox(height: 33.v),
                SizedBox(height: 33.v),
                CustomImageView(
                    svgPath: ImageConstant.imgFingerprint,
                    height: 45.v,
                    width: 39.h,
                    onTap: () {
                      onTapImgFingerprintone(context);
                    }),
                SizedBox(height: 37.v),
                GestureDetector(
                    onTap: () {
                      onTapTxtDonthaveanaccount(context);
                    },
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Don’t have an account? ",
                              style: theme.textTheme.titleMedium),
                          TextSpan(
                              text: "Sign Up",
                              style: CustomTextStyles.titleMediumWhiteA700_2)
                        ]),
                        textAlign: TextAlign.left)),
                SizedBox(height: 40.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }

  onTapImgFingerprintone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }

  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  onTapForget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileNumberPinChangeScreen);
  }
}
