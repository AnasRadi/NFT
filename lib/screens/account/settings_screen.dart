import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft/constants/app.colors.dart';
import 'package:nft/screens/account/change_password_screen.dart';
import 'package:nft/screens/account/edit_details_screen.dart';
import 'package:nft/screens/account/notification_screen.dart';
import 'package:nft/screens/account/payment_settings_screen.dart';
import 'package:nft/widget/card_setting_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _content = 'Hi';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Settings',
          style: GoogleFonts.roboto(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide(color: Colors.white)),
            onSelected: (value) {
              if (value != _content) {
                setState(() {
                  _content = value;
                  _counter = 0;
                });
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    'Hi',
                    style: GoogleFonts.roboto(),
                  ),
                  value: 'Hi',
                  textStyle: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  child: Text('hello'),
                  value: 'hello',
                  textStyle: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  child: Text('hello hi'),
                  value: 'hello hi',
                  textStyle: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                )
              ];
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp),
            ),
            SizedBox(
              height: 24.h,
            ),
            CardSettingWidget(
                onPressed: () => Get.to(EditDetailsScreen()),
                icon: Icons.edit_outlined,
                name: 'Change my details'),
            SizedBox(
              height: 10.h,
            ),
            CardSettingWidget(
                onPressed: () =>Get.to(ChangePasswordScreen()),
                icon: Icons.lock_outlined,
                name: 'Change Password'),
            SizedBox(
              height: 10.h,
            ),
            CardSettingWidget(
                onPressed: () =>Get.to(PaymentSettingsScreen()),
                icon: Icons.payment_outlined,
                name: 'Payment Settings'),
            SizedBox(
              height: 10.h,
            ),
            CardSettingWidget(
                onPressed: () {},
                icon: Icons.check_outlined,
                name: 'Product verification'),
            SizedBox(
              height: 10.h,
            ),
            CardSettingWidget(
                onPressed: () =>Get.to(NotificationScreen()),
                icon: Icons.notifications_none_outlined,
                name: 'Notifications'),
            SizedBox(
              height: 10.h,
            ),
            CardSettingWidget(
                onPressed: () {},
                icon: Icons.delete_outline_outlined,
                name: 'Delete account'),
            SizedBox(
              height: 10.h,
            ),
            CardSettingWidget(
                onPressed: () {}, icon: Icons.logout_outlined, name: 'Logout'),
          ],
        ),
      ),
    );
  }
}
