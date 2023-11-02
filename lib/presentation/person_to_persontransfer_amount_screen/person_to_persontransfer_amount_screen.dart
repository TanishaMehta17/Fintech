import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/person_to_person_confirmation_screen/person_to_person_confirmation_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonToPersontransferAmountScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var name, accNo;
  PersonToPersontransferAmountScreen(this.name, this.accNo, {Key? key})
      : super(key: key);

  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 78.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "Money Transfer",
                    margin: EdgeInsets.only(left: 57.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 39.h, vertical: 4.v))
                ]),
            body: Form(
              key: _formKey,
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 12.v),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(left: 33.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(children: [
                                      SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          padding: EdgeInsets.only(left: 17.h),
                                          child: IntrinsicWidth(
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 66.h,
                                                      vertical: 30.v),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10,
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgGroup6603),
                                                          fit: BoxFit.cover)),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                            "Available Balance",
                                                            style: CustomTextStyles
                                                                .titleSmallWhiteA700),
                                                        SizedBox(height: 8.v),
                                                        RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "",
                                                                      style: CustomTextStyles
                                                                          .headlineMediumWhiteA700Regular),
                                                                  TextSpan(
                                                                      text:
                                                                          "4,228",
                                                                      style: CustomTextStyles
                                                                          .headlineMediumWhiteA700),
                                                                  TextSpan(
                                                                      text:
                                                                          ".76",
                                                                      style: CustomTextStyles
                                                                          .titleLarge22)
                                                                ]),
                                                            textAlign:
                                                                TextAlign.left),
                                                        SizedBox(height: 2.v),
                                                        Row(children: [
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgGroup5970,
                                                              height: 5.v,
                                                              width: 36.h,
                                                              margin: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          11.v)),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgGroup5970,
                                                              height: 5.v,
                                                              width: 36.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          15.h,
                                                                      top: 11.v,
                                                                      bottom: 11
                                                                          .v)),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgGroup5970,
                                                              height: 5.v,
                                                              width: 36.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          15.h,
                                                                      top: 11.v,
                                                                      bottom: 11
                                                                          .v)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          15.h),
                                                              child: Text(
                                                                  "8635",
                                                                  style: CustomTextStyles
                                                                      .titleMediumWhiteA700))
                                                        ]),
                                                        SizedBox(height: 6.v),
                                                        Row(children: [
                                                          RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "Valid From",
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelLarge),
                                                                    TextSpan(
                                                                        text:
                                                                            " 10/25",
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelLarge)
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          30.h),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "Valid Thru ",
                                                                            style:
                                                                                theme.textTheme.labelLarge),
                                                                        TextSpan(
                                                                            text:
                                                                                "10/30",
                                                                            style:
                                                                                theme.textTheme.labelLarge)
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left))
                                                        ]),
                                                        SizedBox(height: 13.v),
                                                        Text("Card Holder",
                                                            style: CustomTextStyles
                                                                .bodySmallWhiteA700),
                                                        SizedBox(height: 5.v),
                                                        Text("Will Jonas",
                                                            style: CustomTextStyles
                                                                .titleMediumWhiteA700_1)
                                                      ]))))
                                    ]),
                                    SizedBox(height: 10.v),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup6692,
                                        height: 4.v,
                                        width: 19.h)
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 83.h, top: 30),
                              child: Text("Enter Amount",
                                  style: CustomTextStyles
                                      .titleMediumBluegray90019))),
                      CustomTextFormField(
                          width: 800,
                          controller: amountController,
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
                              left: 73.h, top: 15.v, right: 27.h),
                          hintText: "",
                          hintStyle: CustomTextStyles.headlineMediumPrimary,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 15.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlinePrimaryTL72),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100, left: 30),
                        child: CustomElevatedButton(
                          text: "Next",
                          margin: EdgeInsets.only(left: 29.h, right: 3.h),
                          // onTap: () {
                          //   onTapNext(context);
                          // }
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              onTapNext(context);
                            }
                          },
                        ),
                      )
                    ]),
                  )),
            )));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the personToPersonConfirmationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the personToPersonConfirmationScreen.
  onTapNext(BuildContext context) {
    //Navigator.pushNamed(context, AppRoutes.personToPersonConfirmationScreen);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PersonToPersonConfirmationScreen(
            name, accNo, amountController.text.toString()),
      ),
    );
  }
}
