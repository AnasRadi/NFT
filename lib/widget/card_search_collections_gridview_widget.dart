import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft/constants/app.colors.dart';
import 'package:nft/widget/button_widget.dart';

class ContainerSearchCollectionsGridViewWidget extends StatelessWidget {


  ContainerSearchCollectionsGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
      child: Card(
        elevation: 10,
        child: Container(
          height: 98.0,
          child: Row(
            children: <Widget>[
              Container(
                height: 98.h,
                width: 64.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/product1.png"),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.5),
                child: Container(
                  height: 98.h,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/img_profile.png',
                              height: 20.h,
                              width: 20.w,
                            ),
                            SizedBox(width: 8.w,),
                            Text('Bored Ape Yacht Club /',style: GoogleFonts.roboto(fontSize: 14.sp,fontWeight: FontWeight.w400)),
                            SizedBox(width: 4.w,),
                            Text('34,7K owners',style: GoogleFonts.roboto(fontSize: 12.sp,fontWeight: FontWeight.w400,color: AppColors.grey2),),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/coin.png',
                              height: 18.h,
                              width: 18.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Total voume',style: GoogleFonts.roboto(fontSize: 12.sp,fontWeight: FontWeight.w400,color: AppColors.grey2),),
                                Text('795,6K BNB',style: GoogleFonts.roboto(fontSize: 16.sp,fontWeight: FontWeight.w400)),
                              ],
                            ),
                            SizedBox(width: 29.w,),
                            Container(
                                height:36.h,
                                child:Row(
                                    children: [
                                      VerticalDivider(
                                        color: AppColors.black2.withOpacity(0.15),
                                        thickness: 1, //thickness of divier line
                                      ),
                                    ]
                                )
                            ),
                            SizedBox(width: 29.w,),
                            Image.asset('assets/images/coin.png',
                              height: 18.h,
                              width: 18.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Floor',style: GoogleFonts.roboto(fontSize: 12.sp,fontWeight: FontWeight.w400,color: AppColors.grey2),),
                                Text('72 BNB',style: GoogleFonts.roboto(fontSize: 16.sp,fontWeight: FontWeight.w400)),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
