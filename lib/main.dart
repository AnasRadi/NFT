import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nft/constants/app.theme.dart';
import 'package:nft/screens/bn_screen.dart';

import 'package:nft/screens/cart/checkout_screen.dart';
import 'package:nft/screens/search/search_screen.dart';


bool darkMode = false;
void main() async {
  await GetStorage.init();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}


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
              theme: ThemesService().lightTheme,
              darkTheme: ThemesService().darkTheme,
              themeMode: ThemesService().getThemeMode(),
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              // darkTheme: ThemeData.dark(),
              // home: CheckoutScreen()
              home: BnScreen()
              // home: BumbleBeeRemoteVideo()


          );
        });
  }
}