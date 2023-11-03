import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/spotify_payment_entre_screen/spotify_payment_entre_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SpotifyPaymentOneScreen extends StatelessWidget {
  var acc;
  SpotifyPaymentOneScreen(this.acc, {Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController group6763Controller = TextEditingController();

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
                title: AppbarSubtitle2(text: "Pay Bill"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 37.v),
                child: Column(children: [
                  Text("Are you sure?", style: theme.textTheme.headlineLarge),
                  Container(
                      width: 294.h,
                      margin:
                          EdgeInsets.only(left: 37.h, top: 9.v, right: 36.h),
                      child: Text(
                          "Please make sure that you want to pay netflix bill",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumPink200
                              .copyWith(height: 1.47))),
                  SizedBox(height: 32.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSpotify1,
                      height: 75.adaptSize,
                      width: 75.adaptSize),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 36.h, vertical: 37.v),
                      decoration: AppDecoration.fillGray50001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 17.v),
                            Text("Spotify",
                                style: theme.textTheme.headlineMedium),
                            SizedBox(height: 6.v),
                            Text("$acc",
                                style: CustomTextStyles.titleMedium16_1),
                            // CustomTextFormField(
                            //     controller: group6763Controller,
                            //     margin: EdgeInsets.only(
                            //         left: 22.h, top: 24.v, right: 22.h),
                            //     hintText: "Transactions Status: Unpaid",
                            //     hintStyle:
                            //         CustomTextStyles.titleMediumPrimary16_1,
                            //     textInputAction: TextInputAction.done,
                            //     contentPadding: EdgeInsets.symmetric(
                            //         horizontal: 14.h, vertical: 9.v),
                            //     borderDecoration: TextFormFieldStyleHelper
                            //         .outlineBlueGrayTL10,
                            //     fillColor: Colors.red[100]),
                            Container(
                              width: 249.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.h,
                                vertical: 9.v,
                              ),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Transactions Status:",
                                      style: CustomTextStyles
                                          .titleMediumTealA7000116_1,
                                    ),
                                    TextSpan(
                                      text: " Paid ",
                                      style: CustomTextStyles
                                          .titleMediumTealA7000116_1,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(height: 15.v),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "300.00",
                                      style: CustomTextStyles.displaySmall34),
                                  TextSpan(
                                      text: "USD",
                                      style: CustomTextStyles
                                          .titleLargeSecondaryContainer_2)
                                ]),
                                textAlign: TextAlign.center),
                            SizedBox(height: 22.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 1.v, bottom: 2.v),
                                      child: Text("Transfer fee",
                                          style:
                                              CustomTextStyles.titleMedium_1)),
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "",
                                            style: CustomTextStyles
                                                .titleMediumBluegray900_1),
                                        TextSpan(
                                            text: "0.00",
                                            style: CustomTextStyles
                                                .titleMediumBluegray900_1),
                                        TextSpan(
                                            text: "USD",
                                            style: theme.textTheme.labelSmall)
                                      ]),
                                      textAlign: TextAlign.left)
                                ]),
                            SizedBox(height: 14.v),
                            Divider(),
                            SizedBox(height: 16.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Due Date",
                                      style: CustomTextStyles.titleMedium_1),
                                  Text("March 12. 2021",
                                      style: CustomTextStyles
                                          .titleMediumBluegray900_4)
                                ])
                          ])),
                  CustomElevatedButton(
                      text: "Pay Now",
                      margin:
                          EdgeInsets.only(left: 26.h, top: 38.v, right: 26.h),
                      onTap: () {
                        onTapPaynow(context);
                      })
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

  /// Navigates to the spotifyPaymentEntreScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the spotifyPaymentEntreScreen.
  // onTapPaynow(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.spotifyPaymentEntreScreen);
  // }
  onTapPaynow(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SpotifyPaymentEntreScreen(acc)),
    );
  }
}
