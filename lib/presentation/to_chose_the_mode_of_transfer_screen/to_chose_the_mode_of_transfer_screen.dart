import '../to_chose_the_mode_of_transfer_screen/widgets/chipviewimps_item_widget.dart';
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
class ToChoseTheModeOfTransferScreen extends StatelessWidget {
  ToChoseTheModeOfTransferScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController amountController = TextEditingController();

  TextEditingController remarksplaceholController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 76.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 29.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 30.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text("Transfare type",
                              style:
                                  CustomTextStyles.titleMediumBluegray90019)),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h, top: 16.v),
                          child: Wrap(
                              runSpacing: 12.v,
                              spacing: 12.h,
                              children: List<Widget>.generate(
                                  3, (index) => ChipviewimpsItemWidget()))),
                      SizedBox(height: 81.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 11.h, vertical: 18.v),
                          decoration: AppDecoration.fillGray50001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Amount",
                                    style: CustomTextStyles
                                        .titleMediumBluegray90019),
                                SizedBox(height: 15.v),
                                CustomTextFormField(
                                    controller: amountController,
                                    hintText: "Amount",
                                    hintStyle: theme.textTheme.bodyLarge!,
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillPink,
                                    fillColor: appTheme.deepOrange50),
                                SizedBox(height: 17.v),
                                Text("Remarks",
                                    style: CustomTextStyles
                                        .titleMediumBluegray90019),
                                CustomTextFormField(
                                    controller: remarksplaceholController,
                                    margin: EdgeInsets.only(
                                        top: 8.v, right: 6.h, bottom: 28.v),
                                    hintText: "Please enter the remarks",
                                    hintStyle: theme.textTheme.bodyLarge!,
                                    textInputAction: TextInputAction.done,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 20.v),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillDeepOrange,
                                    fillColor: appTheme.pink200)
                              ])),
                      CustomElevatedButton(
                          text: "Pay Now",
                          margin: EdgeInsets.fromLTRB(32.h, 81.v, 33.h, 2.v),
                          onTap: () {
                            onTapPaynow(context);
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

  /// Navigates to the neftBanksDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the neftBanksDetailsScreen.
  onTapPaynow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.neftBanksDetailsScreen);
  }
}
