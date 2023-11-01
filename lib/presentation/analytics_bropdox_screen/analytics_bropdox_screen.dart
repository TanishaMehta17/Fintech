import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/custom_text_form_field.dart';

class AnalyticsBropdoxScreen extends StatelessWidget {
  AnalyticsBropdoxScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController group6582Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 635.v),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 420.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 44.v,
                            ),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 38.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Dropbox",
                                    style: CustomTextStyles
                                        .headlineMediumErrorContainer,
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "POS Signature Purchase",
                                  style: CustomTextStyles.titleMediumPink20016,
                                ),
                                SizedBox(height: 14.v),
                                CustomTextFormField(
                                  width: 249.h,
                                  controller: group6582Controller,
                                  hintText: "Transactions Status: Posted",
                                  hintStyle:
                                      CustomTextStyles.titleMediumTealA70002,
                                  textInputAction: TextInputAction.done,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 14.h,
                                    vertical: 9.v,
                                  ),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.outlineBlueGray,
                                  fillColor: appTheme.tealA70002,
                                ),
                                SizedBox(height: 16.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "10",
                                        style: CustomTextStyles.displaySmall34,
                                      ),
                                      TextSpan(
                                        text: ".00",
                                        style: theme.textTheme.displaySmall,
                                      ),
                                      TextSpan(
                                        text: "INR",
                                        style:
                                            CustomTextStyles.titleLargePink200,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 16.v),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Transaction ID",
                                      style:
                                          CustomTextStyles.titleMediumPink200_1,
                                    ),
                                    Text(
                                      "14225055650",
                                      style: CustomTextStyles
                                          .titleMediumBluegray900_4,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 18.v),
                                Divider(
                                  color: appTheme.blueGray50,
                                ),
                                SizedBox(height: 16.v),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text(
                                        "Posted Date",
                                        style: CustomTextStyles
                                            .titleMediumPink200_1,
                                      ),
                                    ),
                                    Text(
                                      "Jul 04, 2021",
                                      style: CustomTextStyles
                                          .titleMediumBluegray900_4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgDropbox1,
                          height: 75.adaptSize,
                          width: 75.adaptSize,
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
