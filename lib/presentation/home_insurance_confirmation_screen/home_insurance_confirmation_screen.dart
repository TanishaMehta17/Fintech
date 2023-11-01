import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HomeInsuranceConfirmationScreen extends StatelessWidget {
  HomeInsuranceConfirmationScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Insurance"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 37.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 28.h, right: 28.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 254.v,
                                        width: 371.h,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 3.h),
                                                      padding: EdgeInsets.symmetric(
                                                          horizontal: 22.h,
                                                          vertical: 27.v),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10,
                                                          image: DecorationImage(
                                                              image: fs.Svg(
                                                                  ImageConstant
                                                                      .imgGroup6784),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment.end,
                                                          children: [
                                                            SizedBox(
                                                                height: 152.v),
                                                            Text(
                                                                "House Insurance",
                                                                style: CustomTextStyles
                                                                    .titleLargeBluegray900_1),
                                                            SizedBox(
                                                                height: 5.v),
                                                            Text(
                                                                "Family plans cover two or more members.",
                                                                style: CustomTextStyles
                                                                    .bodyMediumPink200)
                                                          ]))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle1468155x368,
                                                  height: 155.v,
                                                  width: 368.h,
                                                  radius: BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          10.h)),
                                                  alignment:
                                                      Alignment.topCenter)
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 41.v),
                                        child: Text("Transfer Details",
                                            style: CustomTextStyles
                                                .titleLargeBluegray900_1)),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 1.h, top: 19.v),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 31.h, vertical: 21.v),
                                        decoration: AppDecoration.fillGray50001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.v),
                                                        child: Text(
                                                            "Transfer Amount",
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium)),
                                                    RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "150.00",
                                                              style: CustomTextStyles
                                                                  .titleLargeBluegray900_2),
                                                          TextSpan(
                                                              text: "INR",
                                                              style: theme
                                                                  .textTheme
                                                                  .labelSmall)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left)
                                                  ]),
                                              SizedBox(height: 20.v),
                                              Divider(),
                                              SizedBox(height: 22.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 1.v,
                                                                bottom: 2.v),
                                                        child: Text(
                                                            "Insurance Plan",
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium)),
                                                    Text("Monthly",
                                                        style: CustomTextStyles
                                                            .titleLargeBluegray90021)
                                                  ]),
                                              SizedBox(height: 17.v),
                                              Divider(),
                                              SizedBox(height: 21.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 4.v),
                                                        child: Text(
                                                            "Payment Policy",
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 2.v),
                                                        child: Text("Quarterly",
                                                            style: CustomTextStyles
                                                                .titleLargeBluegray900_3))
                                                  ]),
                                              SizedBox(height: 16.v),
                                              Divider(),
                                              SizedBox(height: 18.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.v),
                                                        child: Text("Total",
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium)),
                                                    RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "150.00",
                                                              style: CustomTextStyles
                                                                  .titleLargeBluegray900_2),
                                                          TextSpan(
                                                              text: "INR",
                                                              style: theme
                                                                  .textTheme
                                                                  .labelSmall)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left)
                                                  ]),
                                              SizedBox(height: 4.v)
                                            ])),
                                    CustomElevatedButton(
                                      text: "Continue",
                                      margin: EdgeInsets.only(
                                          left: 27.h, top: 42.v, right: 27.h),
                                      alignment: Alignment.center,
                                      onTap: () {
                                        onTaphousecon(context);
                                      },
                                    )
                                  ]))))
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

  onTaphousecon(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.homeInsuranceTransferConfirmationScreen);
  }
}
