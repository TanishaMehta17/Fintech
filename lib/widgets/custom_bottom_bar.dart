import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/analytics_screen/analytics_screen.dart';
import 'package:tanisha_s_application14/presentation/atm_locator_screen/atm_locator_screen.dart';
import 'package:tanisha_s_application14/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:tanisha_s_application14/presentation/scanner_screen/scanner_screen.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  final Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: Icons.home,
      activeIcon: Icons.home,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: Icons.qr_code,
      activeIcon: Icons.qr_code,
      title: "QR Scan",
      type: BottomBarEnum.Qrscan,
    ),
    BottomMenuModel(
      icon: Icons.location_on,
      activeIcon: Icons.location_on,
      title: "ATM Locator",
      type: BottomBarEnum.Atmlocator,
    ),
    BottomMenuModel(
      icon: Icons.analytics,
      activeIcon: Icons.analytics,
      title: "Analytics",
      type: BottomBarEnum.Analytics,
    ),
    BottomMenuModel(
      icon: Icons.more_horiz,
      activeIcon: Icons.more_horiz,
      title: "More",
      type: BottomBarEnum.More,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 11),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  bottomMenuList[index].icon,
                  size: 20,
                  color: Colors.red,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 13),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  bottomMenuList[index].activeIcon,
                  size: 20,
                  color: Colors.blue,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });

          final selectedType = bottomMenuList[index].type;
          widget.onChanged?.call(selectedType);

          // Use Navigator to navigate to the corresponding screen
          switch (selectedType) {
            case BottomBarEnum.Home:
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => DashboardScreen()));
              break;
            case BottomBarEnum.Qrscan:
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ScannerScreen()));
              break;
            case BottomBarEnum.Atmlocator:
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => AtmLocatorScreen()));
              break;
            case BottomBarEnum.Analytics:
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => AnalyticsScreen()));
              break;
            case BottomBarEnum.More:
              showModalBottomSheet(context: context, builder: (BuildContext context){
                return SizedBox(
                   width: double.maxFinite,
                child: Column(children: [
                  
                  _buildScrollView(context)
                ])
                );
              });
              break;
          }
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Qrscan,
  Atmlocator,
  Analytics,
  More,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  final IconData icon;
  final IconData activeIcon;
  final String? title;
  final BottomBarEnum type;
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: CustomBottomBar(),
    ),
  ));
}





Widget _buildScrollView(BuildContext context) {
    return Expanded(
        
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 31.v),
                decoration: AppDecoration.fillWhiteA
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 19.h, vertical: 20.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text("Manage Profile",
                                        style: CustomTextStyles
                                            .titleMediumWhiteA700)),
                                CustomImageView(
                                 //   imagePath: ImageConstant.imgArrowRight,
                                    height: 12.v,
                                    width: 6.h,
                                    margin: EdgeInsets.only(
                                        top: 5.v, right: 2.h, bottom: 5.v))
                              ])),
                      SizedBox(height: 35.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 21.h),
                          child: _buildContactRow(context,
                              contactText: "Submit Complaints")),
                      SizedBox(height: 45.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 21.h),
                          child: _buildContactRow(context,
                              contactText: "Contact")),
                      SizedBox(height: 48.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 21.h),
                          child: _buildContactRow(context,
                              contactText: "Settings")),
                      SizedBox(height: 47.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 21.h),
                          child: _buildContactRow(context,
                              contactText: "Log Out")
                              
                              ),
                      SizedBox(height: 2.v)
                    ])));
  }

  /// Common widget
  Widget _buildContactRow(
    BuildContext context, {
    required String contactText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(contactText,
          style: CustomTextStyles.titleMediumBlack90003
              .copyWith(color: theme.colorScheme.primaryContainer)),
      CustomImageView(
          //imagePath: ImageConstant.imgArrowRightGray500,
          height: 12.v,
          width: 6.h,
          margin: EdgeInsets.only(top: 4.v, bottom: 5.v))
    ]);
  }

  /// Navigates to the logoutScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logoutScreen);
  }





Widget _buildLogoutSection(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
            child: SizedBox(
                height: 341.v,
                width: 427.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 29.h, top: 29.v, right: 29.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 21.h, vertical: 15.v),
                                decoration: AppDecoration.outlineBluegray500112
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgNetflix1,
                                          height: 51.adaptSize,
                                          width: 51.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h,
                                              top: 7.v,
                                              bottom: 7.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Netflix",
                                                    style: theme
                                                        .textTheme.titleSmall),
                                                SizedBox(height: 5.v),
                                                Text("Next Payment: Tuesday",
                                                    style: theme
                                                        .textTheme.labelLarge)
                                              ])),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 12.v,
                                              right: 1.h,
                                              bottom: 13.v),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "",
                                                    style: CustomTextStyles
                                                        .titleLargeGray700_1),
                                                TextSpan(
                                                    text: "1.00",
                                                    style: CustomTextStyles
                                                        .titleLargeGray700_1),
                                                TextSpan(
                                                    text: "USD",
                                                    style: CustomTextStyles
                                                        .labelSmallGray700)
                                              ]),
                                              textAlign: TextAlign.left))
                                    ])),
                            SizedBox(height: 13.v),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 21.h, vertical: 15.v),
                                decoration: AppDecoration.outlineBluegray500112
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPaypal1,
                                          height: 51.adaptSize,
                                          width: 51.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 15.h,
                                              top: 8.v,
                                              bottom: 8.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Paypal",
                                                    style: theme
                                                        .textTheme.titleSmall),
                                                SizedBox(height: 3.v),
                                                Text("Next Payment: 14/04",
                                                    style: theme
                                                        .textTheme.labelLarge)
                                              ])),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 12.v,
                                              right: 4.h,
                                              bottom: 13.v),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "",
                                                    style: CustomTextStyles
                                                        .titleLargeGray700_1),
                                                TextSpan(
                                                    text: "3.50",
                                                    style: CustomTextStyles
                                                        .titleLargeGray700_1),
                                                TextSpan(
                                                    text: "USD",
                                                    style: CustomTextStyles
                                                        .labelSmallGray700)
                                              ]),
                                              textAlign: TextAlign.left))
                                    ]))
                          ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 55.h, vertical: 47.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 41.h),
                                        child: Text("Are you sure?",
                                            style: CustomTextStyles
                                                .headlineLargeBluegray900))),
                                SizedBox(height: 5.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 6.h),
                                        child: Text(
                                            "Are you sure you want to logout?",
                                            style: CustomTextStyles
                                                .titleMediumPink200_1))),
                                SizedBox(height: 33.v),
                                CustomElevatedButton(text: "Log Out"),
                                SizedBox(height: 19.v),
                                CustomElevatedButton(
                                    text: "Cancel",
                                    buttonStyle: CustomButtonStyles.fillGray,
                                    buttonTextStyle:
                                        CustomTextStyles.titleLargeGray500,
                                    onTap: () {
                                      onTapCancel(context);
                                    }),
                                SizedBox(height: 3.v)
                              ])))
                ]))));
  }

  /// Navigates to the dashboardProfileScreen when the action is triggered.
  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardProfileScreen);
  }

// import 'package:flutter/material.dart';
// import 'package:tanisha_s_application14/presentation/analytics_screen/analytics_screen.dart';
// import 'package:tanisha_s_application14/presentation/atm_locator_screen/atm_locator_screen.dart';
// import 'package:tanisha_s_application14/presentation/dashboard_screen/dashboard_screen.dart';
// import 'package:tanisha_s_application14/presentation/scanner_screen/scanner_screen.dart';
// import 'package:tanisha_s_application14/presentation/setting_screen/setting_screen.dart';

// class CustomBottomBar extends StatefulWidget {
//   CustomBottomBar({this.onChanged});

//   final Function(BottomBarEnum)? onChanged;

//   @override
//   CustomBottomBarState createState() => CustomBottomBarState();
// }

// class CustomBottomBarState extends State<CustomBottomBar> {
//   int selectedIndex = 0; // Initialize with the home page

//   List<BottomMenuModel> bottomMenuList = [
//     BottomMenuModel(
//       icon: Icons.home,
//       activeIcon: Icons.home,
//       title: "Home",
//       type: BottomBarEnum.Home,
//     ),
//     BottomMenuModel(
//       icon: Icons.qr_code,
//       activeIcon: Icons.qr_code,
//       title: "QR Scan",
//       type: BottomBarEnum.Qrscan,
//     ),
//     BottomMenuModel(
//       icon: Icons.location_on,
//       activeIcon: Icons.location_on,
//       title: "ATM Locator",
//       type: BottomBarEnum.Atmlocator,
//     ),
//     BottomMenuModel(
//       icon: Icons.analytics,
//       activeIcon: Icons.analytics,
//       title: "Analytics",
//       type: BottomBarEnum.Analytics,
//     ),
//     BottomMenuModel(
//       icon: Icons.more_horiz,
//       activeIcon: Icons.more_horiz,
//       title: "More",
//       type: BottomBarEnum.More,
//     ),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     // Determine the initial page and set selectedIndex accordingly
//     selectedIndex = _getInitialPageIndex();
//   }

//   int _getInitialPageIndex() {
//     // You can add your logic here to determine the initial page.
//     // For example, if you want to start on the "Analytics" page initially:
//     return BottomBarEnum.Analytics.index;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 93,
//       decoration: BoxDecoration(
//         color: Colors.grey[50],
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             spreadRadius: 2,
//             blurRadius: 2,
//             offset: Offset(0, 11),
//           ),
//         ],
//       ),
//       child: BottomNavigationBar(
//         backgroundColor: Colors.transparent,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         selectedFontSize: 0,
//         elevation: 0,
//         currentIndex: selectedIndex,
//         type: BottomNavigationBarType.fixed,
//         items: List.generate(bottomMenuList.length, (index) {
//           return BottomNavigationBarItem(
//             icon: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Icon(
//                   bottomMenuList[index].icon,
//                   size: 20,
//                   color: selectedIndex == index ? Colors.blue : Colors.red,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 13),
//                   child: Text(
//                     bottomMenuList[index].title ?? "",
//                     style: TextStyle(
//                       color: selectedIndex == index ? Colors.blue : Colors.red,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             activeIcon: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Icon(
//                   bottomMenuList[index].activeIcon,
//                   size: 20,
//                   color: Colors.blue,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 15),
//                   child: Text(
//                     bottomMenuList[index].title ?? "",
//                     style: TextStyle(
//                       color: Colors.blue,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             label: '',
//           );
//         }),
//         onTap: (index) {
//           setState(() {
//             selectedIndex = index;
//           });

//           final selectedType = bottomMenuList[index].type;
//           widget.onChanged?.call(selectedType);

//           // Use Navigator to navigate to the corresponding screen
//           switch (selectedType) {
//             case BottomBarEnum.Home:
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (_) => DashboardScreen()));
//               break;
//             case BottomBarEnum.Qrscan:
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (_) => ScannerScreen()));
//               break;
//             case BottomBarEnum.Atmlocator:
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (_) => AtmLocatorScreen()));
//               break;
//             case BottomBarEnum.Analytics:
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (_) => AnalyticsScreen()));
//               break;
//             case BottomBarEnum.More:
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (_) => SettingScreen()));
//               break;
//           }
//         },
//       ),
//     );
//   }
// }

// enum BottomBarEnum {
//   Home,
//   Qrscan,
//   Atmlocator,
//   Analytics,
//   More,
// }

// class BottomMenuModel {
//   BottomMenuModel({
//     required this.icon,
//     required this.activeIcon,
//     this.title,
//     required this.type,
//   });

//   final IconData icon;
//   final IconData activeIcon;
//   final String? title;
//   final BottomBarEnum type;
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: CustomBottomBar(),
//     ),
//   ));
// }
// import 'package:flutter/material.dart';
// import 'package:tanisha_s_application14/presentation/analytics_apple_screen/analytics_apple_screen.dart';
// import 'package:tanisha_s_application14/presentation/analytics_screen/analytics_screen.dart';
// import 'package:tanisha_s_application14/presentation/atm_locator_screen/atm_locator_screen.dart';
// import 'package:tanisha_s_application14/presentation/dashboard_screen/dashboard_screen.dart';
// import 'package:tanisha_s_application14/presentation/scanner_screen/scanner_screen.dart';
// import 'package:tanisha_s_application14/presentation/setting_screen/setting_screen.dart';

// class CustomBottomBar extends StatefulWidget {
//   CustomBottomBar({this.onChanged});

//   final Function(BottomBarEnum)? onChanged;

//   @override
//   CustomBottomBarState createState() => CustomBottomBarState();
// }

// class CustomBottomBarState extends State<CustomBottomBar> {
//   PageController _pageController = PageController(initialPage: 0);
//   int selectedIndex = 0;

//   List<BottomMenuModel> bottomMenuList = [
//     BottomMenuModel(
//       icon: Icons.home,
//       title: "Home",
//       type: BottomBarEnum.Home,
//     ),
//     BottomMenuModel(
//       icon: Icons.qr_code,
//       title: "QR Scan",
//       type: BottomBarEnum.Qrscan,
//     ),
//     BottomMenuModel(
//       icon: Icons.location_on,
//       title: "ATM Locator",
//       type: BottomBarEnum.Atmlocator,
//     ),
//     BottomMenuModel(
//       icon: Icons.analytics,
//       title: "Analytics",
//       type: BottomBarEnum.Analytics,
//     ),
//     BottomMenuModel(
//       icon: Icons.more_horiz,
//       title: "More",
//       type: BottomBarEnum.More,
//     ),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _pageController.addListener(() {
//       setState(() {
//         selectedIndex = _pageController.page?.round() ?? 0;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: PageView(
//             controller: _pageController,
//             children: [
//               DashboardScreen(),
//               ScannerScreen(),
//               AtmLocatorScreen(),
//               AnalyticsScreen(),
//               SettingScreen(),
//             ],
//           ),
//         ),
//         Container(
//           height: 93,
//           decoration: BoxDecoration(
//             color: Colors.grey[50],
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 spreadRadius: 2,
//                 blurRadius: 2,
//                 offset: Offset(0, 11),
//               ),
//             ],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: List.generate(bottomMenuList.length, (index) {
//               return GestureDetector(
//                 onTap: () {
//                   _pageController.animateToPage(
//                     index,
//                     duration: Duration(milliseconds: 300),
//                     curve: Curves.ease,
//                   );
//                 },
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Icon(
//                       bottomMenuList[index].icon,
//                       size: 20,
//                       color: selectedIndex == index ? Colors.blue : Colors.red,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(top: 13),
//                       child: Text(
//                         bottomMenuList[index].title ?? "",
//                         style: TextStyle(
//                           color:
//                               selectedIndex == index ? Colors.blue : Colors.red,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }),
//           ),
//         ),
//       ],
//     );
//   }
// }

// enum BottomBarEnum {
//   Home,
//   Qrscan,
//   Atmlocator,
//   Analytics,
//   More,
// }

// class BottomMenuModel {
//   BottomMenuModel({
//     required this.icon,
//     this.title,
//     required this.type,
//   });

//   final IconData icon;
//   final String? title;
//   final BottomBarEnum type;
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: CustomBottomBar(),
//     ),
//   ));
// }
