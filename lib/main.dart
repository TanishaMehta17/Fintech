//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tanisha_s_application14/routes/app_routes.dart';
import 'package:tanisha_s_application14/theme/theme_helper.dart';

//import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // _initializeFirebase();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'tanisha_s_application14',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.payBillScreen,
      routes: AppRoutes.routes,
    );
  }
}

// _initializeFirebase() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
// }
