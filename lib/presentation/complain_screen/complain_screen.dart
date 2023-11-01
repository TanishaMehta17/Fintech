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
class ComplainScreen extends StatelessWidget {
  ComplainScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController cnicvalueoneController = TextEditingController();

  TextEditingController messageController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 78.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Complain"),
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
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.h, vertical: 32.v),
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 13.v),
                            Text("Enter your details",
                                style:
                                    CustomTextStyles.titleMediumBluegray90019),
                            SizedBox(height: 16.v),
                            CustomTextFormField(
                                controller: firstNameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Name cannot be empty';
                                  }
                                  return null;
                                },
                                fillColor: Color(0XFFA4A9AE).withOpacity(0.15),
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
                                fillColor: Color(0XFFA4A9AE).withOpacity(0.15),
                                hintText: "Last Name",
                                hintStyle: theme.textTheme.bodyLarge!),
                            SizedBox(height: 9.v),
                            CustomTextFormField(
                                controller: mobileNumberController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Mobile Number cannot be empty';
                                  }
                                  if (value.length != 10) {
                                    return 'Mobile Number must be 10 digits';
                                  }
                                  return null;
                                },
                                fillColor: Color(0XFFA4A9AE).withOpacity(0.15),
                                hintText: "Mobile Number",
                                hintStyle: theme.textTheme.bodyLarge!,
                                textInputType: TextInputType.phone),
                            SizedBox(height: 9.v),
                            CustomTextFormField(
                                controller: cnicvalueoneController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'CNIC cannot be empty';
                                  }
                                  if (!isValidCNIC(value)) {
                                    return 'Please enter a valid CNIC';
                                  }
                                  return null;
                                },
                                fillColor: Color(0XFFA4A9AE).withOpacity(0.15),
                                hintText: "CNIC",
                                hintStyle: theme.textTheme.bodyLarge!),
                            SizedBox(height: 34.v),
                            Text("Enter your Complain",
                                style:
                                    CustomTextStyles.titleMediumBluegray90019),
                            SizedBox(height: 14.v),
                            CustomTextFormField(
                                controller: messageController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This cannot be empty';
                                  }
                                  return null;
                                },
                                fillColor: Color(0XFFA4A9AE).withOpacity(0.15),
                                hintText: "Type  your message here..",
                                hintStyle: theme.textTheme.bodyLarge!,
                                textInputAction: TextInputAction.done,
                                suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 30.v, 7.h, 7.v),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgSignalBlueGray20001)),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 153.v),
                                maxLines: 7),
                            CustomElevatedButton(
                                text: "Send",
                                margin: EdgeInsets.only(
                                    left: 26.h, top: 79.v, right: 26.h),

                                //onTapSend(context);
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    onTapSend(context);
                                  }
                                },
                                alignment: Alignment.center)
                          ]),
                    ))),
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

  bool isValidCNIC(String cnic) {
    // Implement your CNIC validation logic here.
    return true;
  }

  /// Navigates to the dashboardProfileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the dashboardProfileScreen.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardProfileScreen);
  }
}
