import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ContactScreen extends StatelessWidget {
  ContactScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController phonenumberoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

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
                title: AppbarSubtitle2(text: "Contact"),
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
                        EdgeInsets.symmetric(horizontal: 30.h, vertical: 44.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Call Us",
                              style: CustomTextStyles.titleMediumBluegray90019),
                          SizedBox(height: 13.v),
                          CustomTextFormField(
                              fillColor: Color(0XFFA4A9AE).withOpacity(0.15),
                              controller: phonenumberoneController,
                              hintText: "+91 123 3698 789",
                              hintStyle: theme.textTheme.bodyLarge!,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 19.v, 11.h, 19.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCall)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 60.v),
                              contentPadding: EdgeInsets.only(
                                  top: 20.v, right: 30.h, bottom: 20.v)),
                          SizedBox(height: 31.v),
                          Text("Email",
                              style: CustomTextStyles.titleMediumBluegray90019),
                          SizedBox(height: 11.v),
                          CustomTextFormField(
                              controller: emailController,
                              hintText: "support@fintech.com",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 21.v, 11.h, 20.v),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCheckmark17x22)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 60.v),
                              contentPadding: EdgeInsets.only(
                                  top: 20.v, right: 30.h, bottom: 20.v)),
                          SizedBox(height: 5.v)
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
}
