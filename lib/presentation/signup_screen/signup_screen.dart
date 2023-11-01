// import 'package:flutter/material.dart';
// import 'package:tanisha_s_application14/core/app_export.dart';
// import 'package:tanisha_s_application14/widgets/custom_checkbox_button.dart';
// import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
// import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// // ignore_for_file: must_be_immutable
// class SignupScreen extends StatelessWidget {
//   SignupScreen({Key? key}) : super(key: key);

//   TextEditingController nameController = TextEditingController();

//   TextEditingController emailController = TextEditingController();

//   TextEditingController mobileNumberController = TextEditingController();

//   TextEditingController cnicvalueoneController = TextEditingController();

//   TextEditingController passwordController = TextEditingController();

//   bool iagreewithterms = false;

//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     mediaQueryData = MediaQuery.of(context);
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: appTheme.blueGray900,
//             resizeToAvoidBottomInset: false,
//             body: Form(
//                 key: _formKey,
//                 child: SizedBox(
//                     width: double.maxFinite,
//                     child: Column(children: [
//                       SizedBox(height: 199.v),
//                       Expanded(
//                           child: SingleChildScrollView(
//                               child: Padding(
//                                   padding:
//                                       EdgeInsets.only(left: 32.h, right: 54.h),
//                                   child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.end,
//                                       children: [
//                                         Padding(
//                                             padding:
//                                                 EdgeInsets.only(right: 21.h),
//                                             child: Text("Create Your Account",
//                                                 style: CustomTextStyles
//                                                     .headlineLargeWhiteA700)),
//                                         CustomTextFormField(
//                                             controller: nameController,
//                                             margin: EdgeInsets.only(
//                                                 left: 26.h, top: 30.v),
//                                             hintText: "Name",
//                                             hintStyle: CustomTextStyles
//                                                 .titleMediumGray5000116_1,
//                                             borderDecoration:
//                                                 TextFormFieldStyleHelper
//                                                     .fillWhiteA,
//                                             fillColor: appTheme.whiteA700),
//                                         CustomTextFormField(
//                                             controller: emailController,
//                                             margin: EdgeInsets.only(
//                                                 left: 26.h, top: 25.v),
//                                             hintText: "Email",
//                                             hintStyle: CustomTextStyles
//                                                 .titleMediumGray5000116_1,
//                                             textInputType:
//                                                 TextInputType.emailAddress,
//                                             borderDecoration:
//                                                 TextFormFieldStyleHelper
//                                                     .fillWhiteA,
//                                             fillColor: appTheme.whiteA700),
//                                         CustomTextFormField(
//                                             controller: mobileNumberController,
//                                             margin: EdgeInsets.only(
//                                                 left: 26.h, top: 25.v),
//                                             hintText: "Mobile Number",
//                                             hintStyle: CustomTextStyles
//                                                 .titleMediumGray5000116_1,
//                                             textInputType: TextInputType.phone,
//                                             borderDecoration:
//                                                 TextFormFieldStyleHelper
//                                                     .fillWhiteA,
//                                             fillColor: appTheme.whiteA700),
//                                         CustomTextFormField(
//                                             controller: cnicvalueoneController,
//                                             margin: EdgeInsets.only(
//                                                 left: 26.h, top: 25.v),
//                                             hintText: "CNIC",
//                                             hintStyle: CustomTextStyles
//                                                 .titleMediumGray5000116_1,
//                                             borderDecoration:
//                                                 TextFormFieldStyleHelper
//                                                     .fillWhiteA,
//                                             fillColor: appTheme.whiteA700),
//                                         CustomTextFormField(
//                                             controller: passwordController,
//                                             margin: EdgeInsets.only(
//                                                 left: 28.h,
//                                                 top: 25.v,
//                                                 right: 2.h),
//                                             hintText: "Create Password",
//                                             hintStyle: CustomTextStyles
//                                                 .titleMediumGray5000116_1,
//                                             textInputAction:
//                                                 TextInputAction.done,
//                                             textInputType:
//                                                 TextInputType.visiblePassword,
//                                             suffix: Container(
//                                                 margin: EdgeInsets.fromLTRB(
//                                                     30.h, 20.v, 13.h, 20.v),
//                                                 child: CustomImageView(
//                                                     svgPath: ImageConstant
//                                                         .imgCheckmarkSecondarycontainer)),
//                                             suffixConstraints:
//                                                 BoxConstraints(maxHeight: 63.v),
//                                             obscureText: true,
//                                             contentPadding: EdgeInsets.only(
//                                                 left: 20.h,
//                                                 top: 22.v,
//                                                 bottom: 22.v),
//                                             borderDecoration:
//                                                 TextFormFieldStyleHelper
//                                                     .fillWhiteA,
//                                             fillColor: appTheme.whiteA700),
//                                         CustomCheckboxButton(
//                                             text:
//                                                 "I agree with Terms & Conditions",
//                                             value: iagreewithterms,
//                                             margin: EdgeInsets.only(
//                                                 left: 41.h,
//                                                 top: 27.v,
//                                                 right: 15.h),
//                                             textStyle:
//                                                 CustomTextStyles.titleMedium16,
//                                             onChange: (value) {
//                                               iagreewithterms = value;
//                                             }),
//                                         CustomElevatedButton(
//                                             text: "Send OTP",
//                                             margin: EdgeInsets.only(
//                                                 left: 26.h, top: 25.v),
//                                             onTap: () {
//                                               onTapSendotp(context);
//                                             }),
//                                         Container(
//                                             height: 342.adaptSize,
//                                             width: 342.adaptSize,
//                                             decoration: BoxDecoration(
//                                                 color: appTheme.whiteA700
//                                                     .withOpacity(0.03),
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                         171.h)))
//                                       ]))))
//                     ])))));
//   }

//   /// Navigates to the electricityBillPaymentScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the [Navigator] widget
//   /// to push the named route for the electricityBillPaymentScreen.
//   onTapSendotp(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.electricityBillPaymentScreen);
//   }
// }
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController cnicvalueoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray900,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 199.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.h, right: 54.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 21.h),
                            child: Text(
                              "Create Your Account",
                              style: CustomTextStyles.headlineLargeWhiteA700,
                            ),
                          ),
                          CustomTextFormField(
                            controller: nameController,
                            hintText: "Name",
                            hintStyle:
                                CustomTextStyles.titleMediumGray5000116_1,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillWhiteA,
                            fillColor: appTheme.whiteA700,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Name cannot be empty';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20.0),
                          CustomTextFormField(
                            controller: emailController,
                            hintText: "Email",
                            hintStyle:
                                CustomTextStyles.titleMediumGray5000116_1,
                            textInputType: TextInputType.emailAddress,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillWhiteA,
                            fillColor: appTheme.whiteA700,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email cannot be empty';
                              }
                              if (!isValidEmail(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20.0),
                          CustomTextFormField(
                            controller: mobileNumberController,
                            hintText: "Mobile Number",
                            hintStyle:
                                CustomTextStyles.titleMediumGray5000116_1,
                            textInputType: TextInputType.phone,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillWhiteA,
                            fillColor: appTheme.whiteA700,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Mobile Number cannot be empty';
                              }
                              if (value.length != 10) {
                                return 'Mobile Number must be 10 digits';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20.0),
                          CustomTextFormField(
                            controller: cnicvalueoneController,
                            hintText: "CNIC",
                            hintStyle:
                                CustomTextStyles.titleMediumGray5000116_1,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillWhiteA,
                            fillColor: appTheme.whiteA700,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'CNIC cannot be empty';
                              }
                              if (!isValidCNIC(value)) {
                                return 'Please enter a valid CNIC';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20.0),
                          CustomTextFormField(
                            controller: passwordController,
                            hintText: "Create Password",
                            hintStyle:
                                CustomTextStyles.titleMediumGray5000116_1,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 20.v, 13.h, 20.v),
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
                          SizedBox(height: 20.0),
                          CustomElevatedButton(
                            text: "Send OTP",
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                onTapSendOTP(context);
                              }
                            },
                          ),
                          Container(
                            height: 342.adaptSize,
                            width: 342.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700.withOpacity(0.03),
                              borderRadius: BorderRadius.circular(171.h),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isValidEmail(String email) {
    // Implement your email validation logic here.
    // You can use a regular expression to check for a valid email format.
    // For example, a simple format check could be:
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*$');
    return emailRegExp.hasMatch(email);
  }

  bool isValidCNIC(String cnic) {
    // Implement your CNIC validation logic here.
    return true;
  }

  onTapSendOTP(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpVarificationScreen);
  }
}
