import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/loan_payment_screen/loan_payment_screen.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

class LoanDetailsPage extends StatefulWidget {
  const LoanDetailsPage({Key? key}) : super(key: key);

  @override
  LoanDetailsPageState createState() => LoanDetailsPageState();
}

// ignore_for_file: must_be_immutable
class LoanDetailsPageState extends State<LoanDetailsPage>
    with AutomaticKeepAliveClientMixin<LoanDetailsPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController cniclabeloneController = TextEditingController();

  TextEditingController mobilelabeloneController = TextEditingController();

  TextEditingController passwordlabelController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 30.h, top: 29.v, right: 30.h),
                      child: Column(children: [
                        Text("Enter your Information",
                            style: CustomTextStyles.titleMediumBluegray90019),
                        SizedBox(height: 28.v),
                        CustomTextFormField(
                            controller: nameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Name cannot be empty';
                              }
                              return null;
                            },
                            hintText: "Name",
                            hintStyle: theme.textTheme.bodyLarge!,
                            borderDecoration:
                                TextFormFieldStyleHelper.outlinePrimaryTL10,
                            fillColor: appTheme.whiteA700),
                        SizedBox(height: 29.v),
                        CustomTextFormField(
                            controller: cniclabeloneController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Amount cannot be empty';
                              }
                              // if (!isValidCNIC(value)) {
                              //   return 'Please enter a valid CNIC';
                              // }
                              if (double.tryParse(value) == null) {
                                return 'Please enter a valid number';
                              }
                              return null;
                            },
                            hintText: "Amount",
                            hintStyle: theme.textTheme.bodyLarge!),
                        SizedBox(height: 29.v),
                        CustomTextFormField(
                            controller: mobilelabeloneController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Mobile Number cannot be empty';
                              }
                              if (value.length != 10) {
                                return 'Mobile Number must be 10 digits';
                              }
                              return null;
                            },
                            hintText: "Mobile",
                            hintStyle: theme.textTheme.bodyLarge!,
                            textInputType: TextInputType.phone),
                        CustomTextFormField(
                          controller: passwordlabelController,
                          margin: EdgeInsets.only(left: 8.h, top: 29.v),
                          hintText: "Pasword",
                          hintStyle: theme.textTheme.bodyLarge!,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          // suffix: Container(
                          //     margin: EdgeInsets.symmetric(
                          //         horizontal: 30.h, vertical: 20.v),
                          //     child: CustomImageView(
                          //         svgPath: ImageConstant
                          //             .imgCheckmarkSecondarycontainer)),
                          // suffixConstraints: BoxConstraints(maxHeight: 59.v),
                          // obscureText: true,
                          // contentPadding: EdgeInsets.only(
                          //     left: 18.h, top: 19.v, bottom: 19.v),
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
                          borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
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
                          margin: EdgeInsets.only(
                              left: 26.h, top: 29.v, right: 26.h),
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              onTapContinue(context);
                            }
                          },
                        )
                      ]))
                ])))));
  }

  /// Navigates to the loanPaymentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loanPaymentScreen.
  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.loanPaymentScreen);
  // }

  onTapContinue(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              LoanPaymentScreen(cniclabeloneController.text.toString())),
    );
  }
}
