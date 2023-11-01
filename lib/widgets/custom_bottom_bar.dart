import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/presentation/analytics_apple_screen/analytics_apple_screen.dart';
import 'package:tanisha_s_application14/presentation/analytics_screen/analytics_screen.dart';
import 'package:tanisha_s_application14/presentation/atm_locator_screen/atm_locator_screen.dart';
import 'package:tanisha_s_application14/presentation/dashboard_profile_screen/dashboard_profile_screen.dart';
import 'package:tanisha_s_application14/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:tanisha_s_application14/presentation/scanner_screen/scanner_screen.dart';
import 'package:tanisha_s_application14/presentation/setting_screen/setting_screen.dart';

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
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => DashboardProfileScreen()));
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
