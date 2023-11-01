import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';

class SpotifyConfirmationSuccessfulTransferReciptScreen
    extends StatelessWidget {
  SpotifyConfirmationSuccessfulTransferReciptScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 833.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 56.h,
                    right: 56.h,
                    bottom: 35.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 92.h,
                    vertical: 18.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Text(
                        "View Receipt",
                        style: theme.textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 429.v,
                  width: 427.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 29.h,
                            vertical: 47.v,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.customBorderTL20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Spotify",
                                style: theme.textTheme.headlineMedium,
                              ),
                              SizedBox(height: 16.v),
                              Text(
                                "2******6125",
                                style: CustomTextStyles.titleMedium16_1,
                              ),
                              SizedBox(height: 13.v),
                              Container(
                                width: 249.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 24.h,
                                  vertical: 9.v,
                                ),
                                decoration: AppDecoration.outlineBluegray500112
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Transactions Status:",
                                        style: CustomTextStyles
                                            .titleMediumTealA7000116,
                                      ),
                                      TextSpan(
                                        text: " Paid ",
                                        style: CustomTextStyles
                                            .titleMediumTealA7000116,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(height: 29.v),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "10.00",
                                      style: CustomTextStyles.displaySmall34,
                                    ),
                                    TextSpan(
                                      text: "INR",
                                      style: CustomTextStyles
                                          .titleLargeSecondaryContainer_2,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 20.v),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Transfer fee",
                                    style:
                                        CustomTextStyles.titleMediumPink200_1,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "0.00",
                                          style: CustomTextStyles
                                              .titleMediumBluegray900,
                                        ),
                                        TextSpan(
                                          text: "INR",
                                          style: CustomTextStyles.labelSmall_3,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              SizedBox(height: 18.v),
                              Divider(
                                color: appTheme.blueGray50,
                              ),
                              SizedBox(height: 17.v),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "Due Date",
                                      style:
                                          CustomTextStyles.titleMediumPink200_1,
                                    ),
                                  ),
                                  Text(
                                    "March 21,2021",
                                    style: CustomTextStyles
                                        .titleMediumBluegray900_5,
                                  ),
                                ],
                              ),
                              SizedBox(height: 7.v),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSpotify1,
                        height: 75.adaptSize,
                        width: 75.adaptSize,
                        alignment: Alignment.topCenter,
                      ),
                    ],
                  ),
                ),
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
}
