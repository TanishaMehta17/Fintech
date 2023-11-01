import '../normal_fd_payment_screen/widgets/chipviewgroup78_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class NormalFdPaymentScreen extends StatelessWidget {
  NormalFdPaymentScreen({Key? key}) : super(key: key);

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
                title: AppbarSubtitle2(text: "Payment Plan"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 18.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 55,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFF13C999).withOpacity(0.15),
                        ),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgLaptop,
                            height: 34.v,
                            width: 32.h),
                      ),
                      SizedBox(height: 10.v),
                      Text("Normal FD",
                          style: CustomTextStyles.titleLargeBluegray900_1),
                      Container(
                          width: 344.h,
                          margin: EdgeInsets.only(
                              left: 17.h, top: 21.v, right: 6.h),
                          child: Text(
                              "One can get a tax exemption up to Rs. 1.5 lakh in a year\nThese FDs have a lock-in period of 5 years during which you cannot withdraw the amount\nOnly one-time lumpsum deposits are allowed",
                              maxLines: 7,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .titleLargeSecondaryContainerRegular_1
                                  .copyWith(height: 1.47))),
                      SizedBox(height: 63.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Duration",
                              style:
                                  CustomTextStyles.titleMediumBluegray90019)),
                      SizedBox(height: 11.v),
                      Wrap(
                          runSpacing: 15.v,
                          spacing: 15.h,
                          children: List<Widget>.generate(
                              12, (index) => Chipviewgroup78ItemWidget())),
                      SizedBox(height: 24.v),
                      Text("All terms and Conditions Are Applied",
                          style: CustomTextStyles.bodyLargePrimary_1),
                      CustomElevatedButton(
                        text: "Continue",
                        margin: EdgeInsets.fromLTRB(26.h, 11.v, 26.h, 4.v),
                        onTap: () {
                          onTapfdpay(context);
                        },
                      ),
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

  onTapfdpay(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fdPaymentScreen);
  }
}
