import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class FamilyConfirmationSuccessfulTransferScreen extends StatelessWidget {
  FamilyConfirmationSuccessfulTransferScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 76.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 29.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle2(
                    text: "Confirmation", margin: EdgeInsets.only(left: 69.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 36.v),
                child: Column(children: [
                  SizedBox(height: 49.v),
                  Text("Transfer Successful!",
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 17.v),
                  Text("Your money has been transferred successfully",
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 76.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage160,
                      height: 302.v,
                      width: 367.h),
                  CustomElevatedButton(
                      text: "View Receipt",
                      margin:
                          EdgeInsets.only(left: 26.h, top: 87.v, right: 25.h),
                          onTap: (() {
                            
                            showModalBottomSheet(context: context, builder: (BuildContext context ){
                              return SizedBox(
                                 width: double.maxFinite,
          child: Column(
            children: [
               Padding(
                 padding: const EdgeInsets.only(top:8.0),
                 child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse1751,
                          height: 75.adaptSize,
                          width: 75.adaptSize,
                          radius: BorderRadius.circular(
                            37.h,
                          ),
                        ),
                        _buildFamilyConfirmation(context),
                      ],
                    ),
               ),
              
            ],
          ),
                              );
                            });
                          }
                          
                          
                          
                          ))

                          
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
}
Widget _buildFamilyConfirmation(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 56.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Text(
            "Family Insurance",
            style: theme.textTheme.headlineMedium,
          ),
          Text(
            "1******2135",
            style: CustomTextStyles.titleMediumGray5000116,
          ),
          SizedBox(height: 21.v),
          Container(
            width: 249.h,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.outlineBluegray500112.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Transactions Status:",
                    style: CustomTextStyles.titleMediumTealA7000116,
                  ),
                  TextSpan(
                    text: " Paid ",
                    style: CustomTextStyles.titleMediumTealA7000116,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 18.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "150.00",
                  style: theme.textTheme.displaySmall,
                ),
                TextSpan(
                  text: "INR",
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 20.v),
          _buildTransferFee(
            context,
            transferFee: "Card Type",
            price: "Debit Card",
          ),
          SizedBox(height: 17.v),
          Divider(),
          SizedBox(height: 19.v),
          _buildTransferFee(
            context,
            transferFee: "Transfer Fee",
            price: "0.00INR",
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTransferFee(
    BuildContext context, {
    required String transferFee,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          transferFee,
          style: CustomTextStyles.titleMediumPink200.copyWith(
            color: appTheme.pink200,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "0.00",
                style: CustomTextStyles.titleMedium16_1,
              ),
              TextSpan(
                text: "INR",
                style: theme.textTheme.labelSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
