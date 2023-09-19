import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft/constants/app.colors.dart';

class CardSettingWidget extends StatelessWidget {
  IconData icon;
  String name;
  final void Function() onPressed;


   CardSettingWidget({
    super.key,
    required this.icon,
    required this.name,
     required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 366.w,
        height: 70.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 21.w,),
            Icon(icon),
            SizedBox(width: 16.w,),

            Text(name,style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp
            ),),
            SizedBox(width: 107.w,)
          ],
        ),
      ),
    );
  }
}
