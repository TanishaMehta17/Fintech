import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FasTagScreen extends StatelessWidget {
  FasTagScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController vehicleidlabelController = TextEditingController();

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
                title: AppbarSubtitle3(text: "FasTag"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: appTheme.gray50001.withOpacity(0.25),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                                  child: Container(
                                      height: 100.adaptSize,
                                      width: 100.adaptSize,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.h, vertical: 26.v),
                                      decoration: AppDecoration.fillGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                    height: 8.v,
                                                    width: 76.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 9.v),
                                                    decoration: BoxDecoration(
                                                        color:
                                                            appTheme.amber500,
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                bottom: Radius
                                                                    .circular(3
                                                                        .h))))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: SizedBox(
                                                    height: 44.v,
                                                    width: 76.h,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCamera,
                                                              height: 44.v,
                                                              width: 76.h,
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Container(
                                                                  height: 20.v,
                                                                  width: 59.h,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top: 9
                                                                              .v),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            child: Padding(padding: EdgeInsets.only(top: 5.v), child: SizedBox(width: 48.h, child: Divider(color: appTheme.orange700)))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: SizedBox(
                                                                                height: 20.v,
                                                                                width: 59.h,
                                                                                child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                  Align(
                                                                                      alignment: Alignment.center,
                                                                                      child: RichText(
                                                                                          text: TextSpan(children: [
                                                                                            TextSpan(text: "Fas", style: CustomTextStyles.bodyMediumAudiowideOrange700),
                                                                                            TextSpan(text: "Tag", style: CustomTextStyles.bodyMediumAudiowideGreen800)
                                                                                          ]),
                                                                                          textAlign: TextAlign.left)),
                                                                                  Align(alignment: Alignment.bottomRight, child: SizedBox(width: 37.h, child: Divider(color: appTheme.green800, endIndent: 6.h)))
                                                                                ])))
                                                                      ])))
                                                        ])))
                                          ])))),
                          Padding(
                              padding: EdgeInsets.only(left: 23.h, top: 69.v),
                              child: Row(children: [
                                Container(
                                    height: 47.adaptSize,
                                    width: 47.adaptSize,
                                    decoration: BoxDecoration(
                                        color: appTheme.redA100,
                                        borderRadius:
                                            BorderRadius.circular(23.h))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 17.h, top: 13.v, bottom: 12.v),
                                    child: Text("South Indian Bank Fastag",
                                        style: CustomTextStyles
                                            .bodyLargeBlack90003))
                              ])),
                          SizedBox(height: 69.v),
                          Divider(color: appTheme.black90003.withOpacity(0.2)),
                          SizedBox(height: 71.v),
                          Text("Vehicle Registration Number ID",
                              style: CustomTextStyles.titleSmallBlack90003_1),
                          SizedBox(height: 11.v),
                          CustomTextFormField(
                              controller: vehicleidlabelController,
                              hintText: "Enter Vehicle Registration Number",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 11.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillBlueGray,
                              fillColor: Color(0XFFA4A9AE).withOpacity(0.15)),
                          Container(
                              width: 304.h,
                              margin: EdgeInsets.only(top: 7.v, right: 84.h),
                              child: Text(
                                  "Please enter 4 to 12 character Vehicle Registration Number ID",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyLargeBlack90003
                                      .copyWith(height: 1.47))),
                          CustomElevatedButton(
                              text: "Proceed",
                              margin:
                                  EdgeInsets.fromLTRB(37.h, 68.v, 37.h, 4.v),
                              onTap: () {
                                onTapProceed(context);
                              },
                              alignment: Alignment.center)
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

  /// Navigates to the fasTagDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the fasTagDetailsScreen.
  onTapProceed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fasTagDetailsScreen);
  }
}
