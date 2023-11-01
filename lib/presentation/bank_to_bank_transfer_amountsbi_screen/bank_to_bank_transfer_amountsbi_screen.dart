import '../bank_to_bank_transfer_amountsbi_screen/widgets/chipviewgroupei_item_widget.dart';
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
class BankToBankTransferAmountsbiScreen extends StatelessWidget {
  BankToBankTransferAmountsbiScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirydateoneController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController paymentPurposeOController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 76.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray5000147x47,
                    margin: EdgeInsets.only(left: 29.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "Bank Transfer", margin: EdgeInsets.only(left: 65.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 30.h, vertical: 4.v))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    // height: double.infinity,
                    padding:
                        EdgeInsets.symmetric(horizontal: 29.h, vertical: 36.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 3.v),
                          Text("Add Account Details",
                              style: CustomTextStyles.titleMediumBluegray90019),
                          SizedBox(height: 8.v),
                          CustomTextFormField(
                              controller: nameController,
                              hintText: "Card Holder Name",
                              hintStyle: theme.textTheme.bodyLarge!),
                          SizedBox(height: 9.v),
                          CustomTextFormField(
                              controller: cardNumberController,
                              hintText: "Card Number",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputType: TextInputType.number),
                          SizedBox(height: 9.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomTextFormField(
                                        controller: expirydateoneController,
                                        margin: EdgeInsets.only(right: 5.h),
                                        hintText: "MM/YY",
                                        hintStyle: theme.textTheme.bodyLarge!)),
                                Expanded(
                                    child: CustomTextFormField(
                                        controller: cvvController,
                                        margin: EdgeInsets.only(left: 5.h),
                                        hintText: "CVV",
                                        hintStyle: theme.textTheme.bodyLarge!))
                              ]),
                          SizedBox(height: 44.v),
                          Text("Enter Amount",
                              style: CustomTextStyles.titleMediumBluegray90019),
                          SizedBox(height: 14.v),
                          CustomTextFormField(
                              controller: amountController,
                              hintText: "250.00",
                              hintStyle: CustomTextStyles.headlineMediumPrimary,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 37.h, vertical: 15.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlinePrimaryTL7,
                              fillColor: appTheme.whiteA700),
                          SizedBox(height: 15.v),
                          // Wrap(
                          //     runSpacing: 12.42.v,
                          //     spacing: 12.42.h,
                          //     children: List<Widget>.generate(
                          //         3, (index) => ChipviewgroupeiItemWidget())),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
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
                                      color:
                                          theme.colorScheme.secondaryContainer,
                                      fontSize: 22.fSize,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  selected: false,
                                  backgroundColor:
                                      appTheme.gray50001.withOpacity(0.15),
                                  selectedColor: appTheme.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      7.h,
                                    ),
                                  ),
                                  onSelected: (value) {},
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
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
                                  backgroundColor: Colors.red[100],
                                  selectedColor: appTheme.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      7.h,
                                    ),
                                  ),
                                  onSelected: (value) {},
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
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
                                      color:
                                          theme.colorScheme.secondaryContainer,
                                      fontSize: 22.fSize,
                                      fontFamily: 'Arial',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  selected: false,
                                  backgroundColor:
                                      appTheme.gray50001.withOpacity(0.15),
                                  selectedColor: appTheme.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      7.h,
                                    ),
                                  ),
                                  onSelected: (value) {},
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 46.v),
                          Text("Payment Purpose",
                              style: CustomTextStyles.titleMediumBluegray90019),
                          SizedBox(height: 12.v),
                          CustomTextFormField(
                              controller: paymentPurposeOController,
                              hintText: "Purpose of payment (Optional)",
                              hintStyle: theme.textTheme.bodyLarge!,
                              textInputAction: TextInputAction.done),
                          //SizedBox(height: 46.v),
                          CustomElevatedButton(
                              text: "Continue",
                              margin: EdgeInsets.only(
                                  left: 26.h, top: 44.v, right: 26.h),
                              onTap: () {
                                onTapContinue(context);
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

  /// Navigates to the bankToBankTransferConfirmationsbiScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bankToBankTransferConfirmationsbiScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.bankToBankTransferConfirmationsbiScreen);
  }
}
