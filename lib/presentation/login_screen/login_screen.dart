import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

  Future<void> onTapLogin(BuildContext context) async {
    String username = userIdController.text;
    String password = passwordController.text;

    var response = await http.post(
      Uri.parse("http://localhost:5000/login"),
      headers: {
        "Content-Type": "application/json",
        "username": username,
        "password": password,
      },
      body: jsonEncode({"event": "login", "scheme": " "}),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> token = jsonDecode(response.body);

      Navigator.pushNamed(context, AppRoutes.dashboardScreen, arguments: {
        "token": token,
      });
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
      //Some error occured
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Some error occured. Please try again later'),
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
