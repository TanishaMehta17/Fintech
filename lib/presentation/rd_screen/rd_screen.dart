import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_checkbox_button.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RdScreen extends StatefulWidget {
  RdScreen({Key? key}) : super(key: key);

  @override
  State<RdScreen> createState() => _RdScreenState();
}

class _RdScreenState extends State<RdScreen> {
  bool isvisible = false;
  void toggleIcon() {
    setState(() {
      isvisible = !isvisible;
    });
  }

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController amountController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  bool agreementText = false;

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
                title: AppbarSubtitle3(text: "Recurring Deposits"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 47.adaptSize,
                                    width: 47.adaptSize,
                                    decoration: BoxDecoration(
                                        color: appTheme.redA100,
                                        borderRadius:
                                            BorderRadius.circular(23.h))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 17.h, top: 12.v, bottom: 13.v),
                                    child: Text("South Indian Bank ",
                                        style: CustomTextStyles
                                            .bodyLargeBlack90003))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(top: 19.v),
                          child: Divider(
                              color: appTheme.black90003.withOpacity(0.2),
                              indent: 2.h)),
                      CustomTextFormField(
                          controller: amountController,
                          margin: EdgeInsets.only(
                              left: 2.h, top: 18.v, right: 27.h),
                          hintText: "Amount",
                          hintStyle: theme.textTheme.bodyLarge!,
                          borderDecoration: TextFormFieldStyleHelper.fillRed,
                          fillColor: appTheme.red50),
                      CustomTextFormField(
                          controller: dateController,
                          margin: EdgeInsets.only(
                              left: 2.h, top: 86.v, right: 26.h),
                          hintText: "Date",
                          hintStyle: theme.textTheme.bodyLarge!,
                          textInputAction: TextInputAction.done,
                          borderDecoration: TextFormFieldStyleHelper.fillRed,
                          fillColor: appTheme.red50),
                      SizedBox(height: 45.v),
                      // CustomCheckboxButton(
                      //     text: "I agree to terms and condition  ",
                      //     value: agreementText,
                      //     onChange: (value) {
                      //       agreementText = value;
                      //     }),
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              width: 18.0,
                              height: 18.0,
                              decoration:
                                  BoxDecoration(color: Colors.grey[300]),
                              //child: Text('Agree to terms and conditions'),
                              child: isvisible
                                  ? Icon(
                                      Icons.check,
                                      size: 15,
                                      color: Colors.green[800],
                                      //weight: 500,
                                    )
                                  : null,
                            ),
                            onTap: () {
                              toggleIcon();
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text("Agree to terms and conditions"),
                          )
                        ],
                      ),
                      Spacer(),
                      CustomElevatedButton(
                          text: "Submit",
                          margin: EdgeInsets.only(
                              left: 39.h, right: 39.h, bottom: 68.v),
                          onTap: () {
                            onTapSubmit(context);
                          },
                          alignment: Alignment.center)
                    ])),
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

  /// Navigates to the rdOptionsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the rdOptionsScreen.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rdOptionsScreen);
  }
}
