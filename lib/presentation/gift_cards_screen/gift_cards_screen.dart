import '../gift_cards_screen/widgets/chipviewgroupse_item_widget.dart';
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
class GiftCardsScreen extends StatefulWidget {
  GiftCardsScreen({Key? key}) : super(key: key);

  @override
  State<GiftCardsScreen> createState() => _GiftCardsScreenState();
}

class _GiftCardsScreenState extends State<GiftCardsScreen> {
  bool passwordVisible = false;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  TextEditingController recipientAccounController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController paymentpurposeController = TextEditingController();

  TextEditingController paymentpasswordController = TextEditingController();

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
                title: AppbarSubtitle2(text: "Gift"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 20.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 29.h, right: 29.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: 263.v,
                                            width: 368.h,
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .center,
                                                      child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      87.h,
                                                                  vertical:
                                                                      12.v),
                                                          decoration: AppDecoration
                                                              .outlineGray50001
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        185.v),
                                                                Text(
                                                                    "Marriage Gift",
                                                                    style: CustomTextStyles
                                                                        .titleLargeBluegray900_1),
                                                                SizedBox(
                                                                    height:
                                                                        5.v),
                                                                Text(
                                                                    "Send Eidi gift to your loved ones",
                                                                    style: CustomTextStyles
                                                                        .bodyMediumPink200)
                                                              ]))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle1469,
                                                      height: 165.v,
                                                      width: 368.h,
                                                      radius:
                                                          BorderRadius.vertical(
                                                              top: Radius
                                                                  .circular(
                                                                      10.h)),
                                                      alignment:
                                                          Alignment.topCenter)
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, top: 27.v),
                                            child: Text(
                                                "Add Recipient Bank Detail",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray90019)),
                                        CustomTextFormField(
                                            controller: nameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Name cannot be empty';
                                              }
                                              return null;
                                            },
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 13.v),
                                            hintText: "Name",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        CustomTextFormField(
                                            controller:
                                                recipientAccounController,
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
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 9.v),
                                            hintText: "Enter Account Number",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputType: TextInputType.number,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 12.h,
                                                    vertical: 20.v)),
                                        CustomTextFormField(
                                            controller: mobileNumberController,
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
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 9.v),
                                            hintText:
                                                "Reciever’s Mobile Number",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputType: TextInputType.phone),
                                        CustomTextFormField(
                                            controller:
                                                paymentpurposeController,
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 9.v),
                                            hintText:
                                                "Purpose of payment (Optional)",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        CustomTextFormField(
                                          controller: paymentpasswordController,
                                          margin: EdgeInsets.only(
                                              left: 1.h, top: 9.v),
                                          hintText: "Pasword",
                                          hintStyle: theme.textTheme.bodyLarge!,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          suffix: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                passwordVisible =
                                                    !passwordVisible;
                                              });
                                            },
                                            child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 20.v, 13.h, 20.v),
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
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .fillWhiteA,
                                          fillColor: appTheme.whiteA700,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Password cannot be empty';
                                            }
                                            if (value.length < 6) {
                                              return 'Password must be at least 6 characters long';
                                            }
                                            return null;
                                          },
                                          // suffix: Container(
                                          //     margin: EdgeInsets.fromLTRB(
                                          //         30.h, 21.v, 23.h, 21.v),
                                          //     child: CustomImageView(
                                          //         svgPath: ImageConstant
                                          //             .imgCheckmarkSecondarycontainer17x22)),
                                          // suffixConstraints:
                                          //     BoxConstraints(maxHeight: 60.v),
                                          // obscureText: true,
                                          // contentPadding: EdgeInsets.only(
                                          //     left: 30.h,
                                          //     top: 20.v,
                                          //     bottom: 20.v)
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, top: 37.v),
                                            child: Text("Enter Amount",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray90019)),
                                        CustomTextFormField(
                                            controller: amountController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Amount cannot be empty';
                                              }

                                              if (double.tryParse(value) ==
                                                  null) {
                                                return 'Please enter a valid number';
                                              }

                                              return null;
                                            },
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlinePrimaryTL71,
                                            fillColor: appTheme.whiteA700),
                                        // Container(
                                        //     width: 368.h,
                                        //     margin: EdgeInsets.only(
                                        //         left: 1.h, top: 12.v),
                                        //     padding: EdgeInsets.symmetric(
                                        //         horizontal: 132.h,
                                        //         vertical: 15.v),
                                        //     decoration: AppDecoration
                                        //         .outlinePrimary1
                                        //         .copyWith(
                                        //             borderRadius:
                                        //                 BorderRadiusStyle
                                        //                     .roundedBorder5),
                                        //     child: TextFormField("",
                                        //         style: CustomTextStyles
                                        //             .headlineMediumPrimary28)),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 1.h, top: 14.v),
                                          // child: Wrap(
                                          //     runSpacing: 12.42.v,
                                          //     spacing: 12.42.h,
                                          //     children: List<Widget>.generate(
                                          //         3,
                                          //         (index) =>
                                          //             ChipviewgroupseItemWidget())
                                          //             )
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: RawChip(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 30.h,
                                                    vertical: 11.v,
                                                  ),
                                                  showCheckmark: false,
                                                  labelPadding: EdgeInsets.zero,
                                                  label: Text(
                                                    "100",
                                                    style: TextStyle(
                                                      color: theme.colorScheme
                                                          .secondaryContainer,
                                                      fontSize: 22.fSize,
                                                      fontFamily: 'Arial',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  selected: false,
                                                  backgroundColor: appTheme
                                                      .gray50001
                                                      .withOpacity(0.15),
                                                  selectedColor:
                                                      appTheme.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide.none,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                  onSelected: (value) {},
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: RawChip(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 30.h,
                                                    vertical: 11.v,
                                                  ),
                                                  showCheckmark: false,
                                                  labelPadding: EdgeInsets.zero,
                                                  label: Text(
                                                    "150",
                                                    style: TextStyle(
                                                      color: Colors.redAccent,
                                                      fontSize: 22.fSize,
                                                      fontFamily: 'Arial',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  selected: false,
                                                  backgroundColor: appTheme
                                                      .gray50001
                                                      .withOpacity(0.15),
                                                  selectedColor:
                                                      appTheme.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide.none,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                  onSelected: (value) {},
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: RawChip(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 30.h,
                                                    vertical: 11.v,
                                                  ),
                                                  showCheckmark: false,
                                                  labelPadding: EdgeInsets.zero,
                                                  label: Text(
                                                    "200",
                                                    style: TextStyle(
                                                      color: theme.colorScheme
                                                          .secondaryContainer,
                                                      fontSize: 22.fSize,
                                                      fontFamily: 'Arial',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  selected: false,
                                                  backgroundColor: appTheme
                                                      .gray50001
                                                      .withOpacity(0.15),
                                                  selectedColor:
                                                      appTheme.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide.none,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      7.h,
                                                    ),
                                                  ),
                                                  onSelected: (value) {},
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, top: 39.v),
                                            child: Text("Enter Gift Message",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray90019)),
                                        CustomTextFormField(
                                            controller: messageController,
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 10.v),
                                            hintText:
                                                "Type  your message here..",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputAction:
                                                TextInputAction.done,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 30.v, 7.h, 8.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSignalBlueGray20001)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight: 116.v),
                                            maxLines: 5),
                                        CustomElevatedButton(
                                            text: "Send",
                                            margin: EdgeInsets.only(
                                                left: 26.h,
                                                top: 32.v,
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

  /// Navigates to the marrigeTransferConfirmationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the marrigeTransferConfirmationScreen.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.marrigeTransferConfirmationScreen);
  }
}
