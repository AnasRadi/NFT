import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nft/constants/app.theme.dart';
import 'package:nft/screens/auth/sign_in.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
              builder: DevicePreview.appBuilder,
              theme: lightTheme,
              darkTheme: darkTheme,

              debugShowCheckedModeBanner: false,
              // darkTheme: ThemeData.dark(),
              // home: SplashScreen()
              home: SignIn()


          );
        });
  }
}

