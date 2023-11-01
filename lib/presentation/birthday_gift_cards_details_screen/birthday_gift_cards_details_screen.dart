import '../birthday_gift_cards_details_screen/widgets/chipviewgroup11_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BirthdayGiftCardsDetailsScreen extends StatefulWidget {
  BirthdayGiftCardsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BirthdayGiftCardsDetailsScreen> createState() =>
      _BirthdayGiftCardsDetailsScreenState();
}

class _BirthdayGiftCardsDetailsScreenState
    extends State<BirthdayGiftCardsDetailsScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController nameController = TextEditingController();

  TextEditingController accountnumberController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController paymentpurposeController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController messageController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;

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
                centerTitle: true,
                title: AppbarSubtitle2(text: "Gift"),
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
                      SizedBox(height: 27.v),
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
                                            height: 245.v,
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
                                                                  horizontal: 72
                                                                      .h,
                                                                  vertical:
                                                                      20.v),
                                                          decoration:
                                                              BoxDecoration(
                                                                  //boxShadow: BoxShadow(color: Colors.black12),
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10,
                                                                  image: DecorationImage(
                                                                      image: fs.Svg(
                                                                          ImageConstant
                                                                              .imgGroup116),
                                                                      fit: BoxFit
                                                                          .cover)),
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
                                                                        160.v),
                                                                Text(
                                                                    "Birthday Gift",
                                                                    style: CustomTextStyles
                                                                        .titleLargeBluegray900_1),
                                                                SizedBox(
                                                                    height:
                                                                        2.v),
                                                                Text(
                                                                    "Send Birthday gift to your loved ones",
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium)
                                                              ]))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle1468,
                                                      height: 158.v,
                                                      width: 368.h,
                                                      radius:
                                                          BorderRadius.vertical(
                                                              top: Radius
                                                                  .circular(
                                                                      10.h)),
                                                      alignment:
                                                          Alignment.topCenter)
                                                ])),
                                        SizedBox(height: 34.v),
                                        Text("Add Recipient Bank Detail",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019),
                                        SizedBox(height: 8.v),
                                        CustomTextFormField(
                                            controller: nameController,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Name cannot be empty';
                                              }
                                              return null;
                                            },
                                            hintText: "Name",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: accountnumberController,
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
                                            hintText: "Enter Account Number",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputType: TextInputType.number,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 12.h,
                                                    vertical: 20.v)),
                                        SizedBox(height: 11.v),
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
                                            hintText:
                                                "Reciever’s Mobile Number",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!,
                                            textInputType: TextInputType.phone),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller:
                                                paymentpurposeController,
                                            hintText:
                                                "Purpose of payment (Optional)",
                                            hintStyle:
                                                theme.textTheme.bodyLarge!),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                          controller: passwordoneController,
                                          hintText: "Pasword",
                                          hintStyle: theme.textTheme.bodyLarge!,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          // suffix: Container(
                                          //     margin: EdgeInsets.fromLTRB(
                                          //         30.h, 21.v, 23.h, 21.v),
                                          //     child: CustomImageView(
                                          //         svgPath: ImageConstant
                                          //             .imgCheckmarkSecondarycontainer17x22)
                                          //             ),
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
                                          // suffixConstraints:
                                          //     BoxConstraints(maxHeight: 60.v),
                                          // obscureText: true,
                                          // contentPadding: EdgeInsets.only(
                                          //     left: 30.h,
                                          //     top: 20.v,
                                          //     bottom: 20.v)
                                        ),
                                        SizedBox(height: 32.v),
                                        Text("Enter Amount",
                                            style: CustomTextStyles
                                                .titleMediumBluegray90019),
                                        SizedBox(height: 14.v),
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
                                        SizedBox(height: 15.v),
                                        // Wrap(
                                        //     runSpacing: 12.42.v,
                                        //     spacing: 12.42.h,
                                        //     children: List<Widget>.generate(
                                        //         3,
                                        //         (index) =>
                                        //             Chipviewgroup11ItemWidget())),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25),
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
                                                    fontWeight: FontWeight.w400,
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
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                selected: false,
                                                backgroundColor:
                                                    Colors.red[100],
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
                                                    fontWeight: FontWeight.w400,
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
                                          ],
                                        ),
                                        SizedBox(height: 34.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("Enter Gift Message",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray90019)),
                                        SizedBox(height: 29.v),
                                        CustomTextFormField(
                                            controller: messageController,
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
                                                top: 31.v,
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

  /// Navigates to the birthdayGiftGiftCardsConfirmationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the birthdayGiftGiftCardsConfirmationScreen.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.birthdayGiftGiftCardsConfirmationScreen);
  }
}
