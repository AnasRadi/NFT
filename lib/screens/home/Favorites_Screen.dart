import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft/constants/app.colors.dart';
import 'package:nft/screens/product_page/product_page_screen.dart';
class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  int _counter=0;
  String _content = 'Hi';
  bool isfav=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('Favorites',style: GoogleFonts.roboto(
          color: Colors.black,
        )),
        actions: [
          PopupMenuButton<String>(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide(
                    color: Colors.white
                )
            ),
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
                  child: Text('Hi',style: GoogleFonts.roboto(),),
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

      body: GestureDetector(
        onTap: ()=>Get.to(ProductPageScreen()),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 12.h,
              ),
              scrollDirection: Axis.vertical,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16.w, top: 16.h, right: 16.w),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Colors.black,
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  'assets/images/product1.png',
                                  fit: BoxFit.cover,
                                  width: 279.w,
                                  height: 281.h,

                                ),
                              ),
                              Positioned(
                                  left: 183.w,
                                  top: 16.h,
                                  right: 16.w,
                                  child: Container(
                                    height: 34.h,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(8.r),
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.access_time_outlined),
                                        Text('05:22')
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),



                        Padding(
                          padding: EdgeInsets.only(left: 16.w, top: 16.h),
                          child: Text(
                            'Deadzone 13 Hideout',
                            style: GoogleFonts.roboto(
                                color: AppColors.black2, fontSize: 18.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, top: 16.w),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/img_profile.png',
                                fit: BoxFit.contain,
                                height: 30.h,
                                width: 30.h,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('@marterium',style: GoogleFonts.roboto(
                                color: Colors.black,
                              ),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.w, top: 16.w,bottom:20.h ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/coin.png',
                                fit: BoxFit.contain,
                                height: 30.h,
                                width: 30.h,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Column(
                                children: [
                                  Text('0.49 BNB',style: GoogleFonts.roboto(
                                    color: Colors.black,
                                  )),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Text('= \$140.5',style: GoogleFonts.roboto(
                                    color: Colors.black,
                                  )),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 126.w,
                                  right: 16.w,
                                ),
                                child: Container(
                                  height: 36.h,
                                  width: 64.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(8.r),
                                      color: Colors.grey.shade200),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isfav = !isfav;
                                      });
                                    },
                                    child: isfav
                                        ? Icon(Icons
                                        .favorite)
                                        : Icon(Icons.favorite_border_outlined),
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
