import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft/constants/app.colors.dart';
import 'package:nft/widget/tabbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  String _content = 'Hi';
  bool fav = false;

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          PopupMenuButton<String>(
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
      body: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 97.h,
              width: 69.w,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        width: 20.w,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 22.w,
                        ),
                        Container(
                          height: 74.h,
                          width: 74.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22.r),
                              color: AppColors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 54.h,
                              width: 54.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.r),
                              ),
                              child: Image.asset(
                                'assets/images/art.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Text('Art', style: GoogleFonts.roboto(
                          color: Colors.black,
                        ))
                      ],
                    );
                  }),
            ),
            //Favorites
            Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 40.h, bottom: 24.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Favorites',style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),),
                  Row(
                    children: [Text('See all',style: GoogleFonts.roboto(
                      color: Colors.black,
                    ),), Icon(Icons.arrow_forward_ios)],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 450.h,
              width: 311.w,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        width: 12.w,
                      ),
                  scrollDirection: Axis.horizontal,
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
                                    ),
                                    child: Image.asset(
                                      'assets/images/product1.png',
                                      fit: BoxFit.contain,
                                      width: 279.w,
                                      height: 281.h,
                                    ),
                                  ),
                                  Positioned(
                                      left: 183.w,
                                      top: 16.w,
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
                              padding: EdgeInsets.only(left: 16.w, top: 16.w),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/ethereum.png',
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                fav = !fav;
                                              });
                                            },
                                            child: fav
                                                ? Icon(Icons
                                                    .favorite_border_outlined)
                                                : Icon(Icons.favorite),
                                          ),
                                          Text('34',style: GoogleFonts.roboto(
                                            color: Colors.black,
                                          ))
                                        ],
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
            SizedBox(
              height: 20.h,
            ),
            //Top Sellers
            Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 20.h, bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Sellers',style: GoogleFonts.roboto(
                    color: Colors.black,
                  )),
                  Row(
                    children: [Text('See all',style: GoogleFonts.roboto(
                      color: Colors.black,
                    )), Icon(Icons.arrow_forward_ios)],
                  )
                ],
              ),
            ),

            TabBar(
                controller: _tabController,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: '1 day',
                  ),
                  Tab(
                    text: '7 day',
                  ),
                  Tab(
                    text: '30 day',
                  ),
                ]),
            SizedBox(
              height: 24.h,
            ),
            Container(
              child: SizedBox(
                height: 250,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                              height: 8.h,
                            ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 78.h,
                            width: 367.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.w,
                                  ),
                                  child: Text((index + 1).toString()),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Image.asset(
                                    'assets/images/img_profile.png',
                                    fit: BoxFit.contain,
                                    height: 44.h,
                                    width: 44.h,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.w, top: 17.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('@marterium',style: GoogleFonts.roboto(
                                        color: Colors.black,
                                      )),
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Text('Floor:1.66ETH',style: GoogleFonts.roboto(
                                        color: Colors.black,
                                      ))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 14.w,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 40.h, top: 21.h),
                                        child: Image.asset(
                                          'assets/images/ethereum.png',
                                          fit: BoxFit.contain,
                                          height: 16.h,
                                          width: 9.h,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20.h),
                                        child: Column(
                                          children: [
                                            Text('475.98 BNB',style: GoogleFonts.roboto(
                                              color: Colors.black,
                                            )),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            Row(
                                              children: [
                                                Text('= \$4.8',style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                )),
                                                Text('= +24.6%',style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                    ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                              height: 8.h,
                            ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 78.h,
                            width: 367.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.w,
                                  ),
                                  child: Text((index + 1).toString()),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Image.asset(
                                    'assets/images/img_profile.png',
                                    fit: BoxFit.contain,
                                    height: 44.h,
                                    width: 44.h,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.w, top: 17.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('@marterium',style: GoogleFonts.roboto(
                                        color: Colors.black,
                                      )),
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Text('Floor:1.66ETH',style: GoogleFonts.roboto(
                                        color: Colors.black,
                                      ))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 14.w,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 40.h, top: 21.h),
                                        child: Image.asset(
                                          'assets/images/ethereum.png',
                                          fit: BoxFit.contain,
                                          height: 16.h,
                                          width: 9.h,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20.h),
                                        child: Column(
                                          children: [
                                            Text('475.98 BNB',style: GoogleFonts.roboto(
                                              color: Colors.black,
                                            )),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            Row(
                                              children: [
                                                Text('= \$4.8',style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                )),
                                                Text('= +24.6%',style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                    ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                              height: 8.h,
                            ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 78.h,
                            width: 367.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.w,
                                  ),
                                  child: Text((index + 1).toString()),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Image.asset(
                                    'assets/images/img_profile.png',
                                    fit: BoxFit.contain,
                                    height: 44.h,
                                    width: 44.h,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.w, top: 17.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('@marterium',style: GoogleFonts.roboto(
                                        color: Colors.black,
                                      )),
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Text('Floor:1.66ETH',style: GoogleFonts.roboto(
                                        color: Colors.black,
                                      ))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 14.w,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 40.h, top: 21.h),
                                        child: Image.asset(
                                          'assets/images/ethereum.png',
                                          fit: BoxFit.contain,
                                          height: 16.h,
                                          width: 9.h,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20.h),
                                        child: Column(
                                          children: [
                                            Text('475.98 BNB',style: GoogleFonts.roboto(
                                              color: Colors.black,
                                            )),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            Row(
                                              children: [
                                                Text('= \$4.8',style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                )),
                                                Text('= +24.6%',style: GoogleFonts.roboto(
                                                  color: Colors.black,
                                                )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),

//Collections
            Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 20.h, bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Collections',style: GoogleFonts.roboto(
                    color: Colors.black,
                  )),
                  Row(
                    children: [Text('See all',style: GoogleFonts.roboto(
                      color: Colors.black,
                    )), Icon(Icons.arrow_forward_ios)],
                  )
                ],
              ),
            ),

            SizedBox(
              height: 270.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.white),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/background_profile.png',
                              fit: BoxFit.contain,
                              height: 151.h,
                            ),
                            Positioned(
                                top: 121.h,
                                left: 40.w,
                                child: CircleAvatar(
                                  child: Image.asset(
                                    'assets/images/img_profile.png',
                                    fit: BoxFit.contain,
                                    width: 56.w,
                                    height: 56.h,
                                  ),
                                )),
                            Positioned(
                                top: 177.h,
                                left: 16.w,
                                child: Row(
                                  children: [
                                    Text('Bored Ape Yacht Club /',style: GoogleFonts.roboto(
                                      color: Colors.black,
                                    )),
                                    Text('2,7K owners',style: GoogleFonts.roboto(
                                      color: Colors.black,
                                    )),
                                  ],
                                )),
                            Positioned(
                                top: 177.h,
                                left: 16.w,
                                child: Row(
                                  children: [
                                    Text('Bored Ape Yacht Club /',style: GoogleFonts.roboto(
                                      color: Colors.black,
                                    )),
                                    Text('2,7K owners',style: GoogleFonts.roboto(
                                      color: Colors.grey,
                                    )),
                                  ],
                                )),
                            Positioned(
                              top: 214.h,
                              left: 16.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.w),
                                    child: Text('Total volume',style: GoogleFonts.roboto(
                                      color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/ethereum.png',
                                        fit: BoxFit.contain,
                                        height: 16.h,
                                        width: 9.h,
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Text('475.98 BNB',style: GoogleFonts.roboto(
                                        color: Colors.black,
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 214.h,
                              left: 186.w,
                              right: 16.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 12.w),
                                    child: Text('Floor',style: GoogleFonts.roboto(
                                      color: Colors.black,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/ethereum.png',
                                        fit: BoxFit.contain,
                                        height: 16.h,
                                        width: 9.h,
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Text('72 BNB',style: GoogleFonts.roboto(
                                        color: Colors.black,
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16.h,
                      ),
                  itemCount: 4),
            ),
            SizedBox(
              height: 5.h,
            )
          ],
        ),
      ),
    );
  }
}
