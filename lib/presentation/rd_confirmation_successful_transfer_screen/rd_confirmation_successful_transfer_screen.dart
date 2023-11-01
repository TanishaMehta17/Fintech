import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

class RdConfirmationSuccessfulTransferScreen extends StatelessWidget {
  RdConfirmationSuccessfulTransferScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 76.h,
          leading: AppbarImage(
            imagePath: ImageConstant.imgProfileIndigoA20001,
            margin: EdgeInsets.only(
              left: 29.h,
              top: 5.v,
              bottom: 5.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle2(
            text: "Confirmation",
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgCheckmark,
              margin: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 4.v,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 29.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "RD Successful!",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: 225.h,
                child: Text(
                  "Your Amount is Deposited Successfully",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumPink200.copyWith(
                    height: 1.47,
                  ),
                ),
              ),
              SizedBox(height: 69.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage160,
                height: 302.v,
                width: 367.h,
              ),
              CustomElevatedButton(
                text: "Done",
                margin: EdgeInsets.fromLTRB(26.h, 72.v, 25.h, 3.v),
                onTap: () {
                  onTapdash(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }

  onTapdash(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }
}
