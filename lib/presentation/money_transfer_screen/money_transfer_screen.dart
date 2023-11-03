import 'package:tanisha_s_application14/presentation/person_to_persontransfer_amount_screen/person_to_persontransfer_amount_screen.dart';

import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_search_view.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MoneyTransferScreen extends StatelessWidget {
  MoneyTransferScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController group7745Controller = TextEditingController();

  TextEditingController ifsccodeController = TextEditingController();

  TextEditingController group6727Controller = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void onTapContinue(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // All fields are valid, navigate to the next screen.
      Navigator.pushNamed(context, AppRoutes.personToPersonConfirmationScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
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
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 28.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 30.h, right: 30.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomSearchView(
                                            controller: searchController,
                                            hintText: "Search ",
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    21.h, 14.v, 19.h, 14.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSearch)),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 48.v),
                                            suffix: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 15.h),
                                                child: IconButton(
                                                    onPressed: () {
                                                      searchController.clear();
                                                    },
                                                    icon: Icon(Icons.clear,
                                                        color: Colors
                                                            .grey.shade600))),
                                            borderDecoration:
                                                SearchViewStyleHelper
                                                    .fillGrayTL10,
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, top: 33.v),
                                            child: Text("Recent transfers",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray90019)),
                                        SizedBox(
                                          height: 140.v,
                                          //child:
                                          //  ListView.separated(
                                          //     padding: EdgeInsets.only(
                                          //         left: 8.h,
                                          //         top: 18.v,
                                          //         right: 8.h),
                                          //     scrollDirection:
                                          //         Axis.horizontal,
                                          //     separatorBuilder:
                                          //         (context, index) {
                                          //       return SizedBox(width: 8.h);
                                          //     },
                                          //     itemCount: 3,
                                          //     itemBuilder: (context, index) {
                                          //       return UserprofileItemWidget();
                                          //     })
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 19.h,
                                                  vertical: 11.v,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineBluegray500111
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10,
                                                ),
                                                width: 112.h,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse174,
                                                      height: 51.adaptSize,
                                                      width: 51.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                        25.h,
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 9.h,
                                                        top: 10.v,
                                                      ),
                                                      child: Text(
                                                        "Dr. Kamal",
                                                        style: CustomTextStyles
                                                            .labelLargeGray5000113,
                                                      ),
                                                    ),
                                                    SizedBox(height: 2.v),
                                                    RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: "40.00",
                                                            style: CustomTextStyles
                                                                .bodyLargeBluegray90016_1,
                                                          ),
                                                          TextSpan(
                                                            text: "INR",
                                                            style: CustomTextStyles
                                                                .bodySmallGray50001,
                                                          ),
                                                        ],
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                    SizedBox(height: 3.v),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 19.h,
                                                    vertical: 11.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlinePrimary1
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10,
                                                  ),
                                                  width: 112.h,
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
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse1753,
                                                        height: 51.adaptSize,
                                                        width: 51.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(
                                                          25.h,
                                                        ),
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 9.h,
                                                          top: 10.v,
                                                        ),
                                                        child: Text(
                                                          "Jonathon",
                                                          style: CustomTextStyles
                                                              .labelLargeGray5000113,
                                                        ),
                                                      ),
                                                      SizedBox(height: 2.v),
                                                      RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "70.00",
                                                              style: CustomTextStyles
                                                                  .bodyLargeBluegray90016_1,
                                                            ),
                                                            TextSpan(
                                                              text: "INR",
                                                              style: CustomTextStyles
                                                                  .bodySmallGray50001,
                                                            ),
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      SizedBox(height: 3.v),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 19.h,
                                                    vertical: 11.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .outlineBluegray500111
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10,
                                                  ),
                                                  width: 112.h,
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
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse176,
                                                        height: 51.adaptSize,
                                                        width: 51.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(
                                                          25.h,
                                                        ),
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 9.h,
                                                          top: 10.v,
                                                        ),
                                                        child: Text(
                                                          "Will Hopper",
                                                          style: CustomTextStyles
                                                              .labelLargeGray5000113,
                                                        ),
                                                      ),
                                                      SizedBox(height: 2.v),
                                                      RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "400.00",
                                                              style: CustomTextStyles
                                                                  .bodyLargeBluegray90016_1,
                                                            ),
                                                            TextSpan(
                                                              text: "INR",
                                                              style: CustomTextStyles
                                                                  .bodySmallGray50001,
                                                            ),
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      SizedBox(height: 3.v),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 33.v),
                                        Text("Make new transfer",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019),
                                        SizedBox(height: 10.v),
                                        CustomTextFormField(
                                            controller: nameController,
                                            // validator: (value) {
                                            //   if (value.isEmpty) {
                                            //     return 'Name is required';
                                            //   }
                                            //   return null;
                                            // },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Name cannot be empty';
                                              }

                                              return null;
                                            },
                                            hintText: "Name",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .fillGrayTL10,
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15)),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: group7745Controller,
                                            hintText: "Enter Account Number",
                                            // validator: (value) {
                                            //   if (value.isEmpty) {
                                            //     return 'Account Number is required';
                                            //   } else if (value.length != 12) {
                                            //     return 'Account Number should be 12 digits';
                                            //   }
                                            //   return null;
                                            // },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Account Number cannot be empty';
                                              }
                                              if (value.length != 12) {
                                                return 'Account Number must be 12 digits';
                                              }
                                              return null;
                                            },
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputType: TextInputType.number,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 12.h,
                                                    vertical: 20.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .fillGrayTL10,
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15)),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: ifsccodeController,
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText: "IFSC Code",
                                            // validator: (value) {
                                            //   if (value.isEmpty) {
                                            //     return 'IFSC Code is required';
                                            //   } else if (value.length != 11) {
                                            //     return 'IFSC Code should be 11 characters';
                                            //   }
                                            //   return null;
                                            // },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'IFSC code cannot be empty';
                                              }
                                              if (value.length != 11) {
                                                return 'IFSC code must be of 11 characters';
                                              }
                                              return null;
                                            },
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: group6727Controller,
                                            // validator: (value) {
                                            //   if (value.isEmpty) {
                                            //     return 'Account Number is required';
                                            //   } else if (value.length != 12) {
                                            //     return 'Account Number should be 12 digits';
                                            //   } else if (value !=
                                            //       group7745Controller.value) {
                                            //     return "Account number must be same as above";
                                            //   }
                                            //   return null;
                                            // },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Account Number cannot be empty';
                                              }
                                              if (value.length != 12) {
                                                return 'Account Number must be 12 digits';
                                              }
                                              // if (value !=
                                              //     group7745Controller.value) {
                                              //   return 'Account Number must be same as above';
                                              // }
                                              return null;
                                            },
                                            hintText:
                                                "Re-enter Account Number ",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputType: TextInputType.number,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 12.h,
                                                    vertical: 20.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .fillGrayTL10,
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15)),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: mobileNumberController,
                                            // validator: (value) {
                                            //   if (value.isEmpty) {
                                            //     return 'Mobile Number is required';
                                            //   } else if (value.length != 10) {
                                            //     return 'Mobile Number should be 10 digits';
                                            //   }
                                            //   return null;
                                            // },
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Mobile Number cannot be empty';
                                              }
                                              if (value.length != 10) {
                                                return 'Mobile Number must be 10 digits';
                                              }
                                              return null;
                                            },
                                            fillColor: Color(0XFFA4A9AE)
                                                .withOpacity(0.15),
                                            hintText:
                                                "Reciever’s Mobile Number ",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType: TextInputType.phone),
                                        CustomElevatedButton(
                                            text: "Continue",
                                            margin: EdgeInsets.only(
                                                left: 26.h,
                                                top: 33.v,
                                                right: 26.h),
                                            onTap: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                onTapSend(context);
                                              }
                                            },
                                            alignment: Alignment.center)
                                      ]))))
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

  /// Navigates to the personToPersontransferAmountScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the personToPersontransferAmountScreen.
  // onTapSend(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.personToPersontransferAmountScreen);
  // }
  onTapSend(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PersonToPersontransferAmountScreen(
                nameController.text.toString(),
                group7745Controller.text.toString(),
              )),
    );
  }
}
