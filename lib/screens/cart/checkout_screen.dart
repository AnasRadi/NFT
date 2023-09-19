import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft/constants/app.colors.dart';
import 'package:nft/widget/StepperWidget.dart';
import 'package:nft/widget/button_profile_widget.dart';
import 'package:nft/widget/edit_text_widget.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _counter = 0;
  String _content = 'Hi';
  bool _check = false;


  late TextEditingController _nameTextController;

  @override
  void initState() {
    super.initState();
    _nameTextController = TextEditingController();

    // _tapGestureRecognizer.onTap = _navigateToRegister;
  }


  @override
  void dispose() {
    _nameTextController.dispose();

    super.dispose();
  }

  String selectedValue = 'جدة';
  int _customCounter = 1;
  void _incrementCustomStepper() {
    setState(() {
      if (_customCounter < 3) {
        _customCounter++;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: GoogleFonts.roboto(color: Colors.black, fontSize: 14.sp),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData.fallback(),
        automaticallyImplyLeading: true,
        actions: [
          PopupMenuButton<String>(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: const BorderSide(color: Colors.white)),
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
                const PopupMenuDivider(),
                PopupMenuItem(
                  child: const Text('hello'),
                  value: 'hello',
                  textStyle: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                const PopupMenuDivider(),
                PopupMenuItem(
                  child: const Text('hello hi'),
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
      body:   SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 400.0,
                height: 70.0,
                child: StepperWidget(num: _customCounter,)),
            Padding(
              padding: EdgeInsets.only(top: 5.h, left: 20.w, bottom: 5.h),
              child: Text(
                '1.Add your personal info',
                style: GoogleFonts.roboto(
                    fontSize: 26.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),

            EditTextWidget(star: '',name: 'Name', size: 15, controller: _nameTextController),
        EditTextWidget(star: '',name: 'Last name', size: 15, controller: _nameTextController),
        EditTextWidget(star: '',name: 'Campany', size: 15, controller: _nameTextController),



        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameTextController,
            decoration: InputDecoration(
              labelText: 'Country',
              labelStyle: GoogleFonts.roboto(
                color: Colors.black,
              ),
              suffixIcon: DropdownButton<String>(
                value: selectedValue,
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue!;
                    _nameTextController.text = selectedValue;
                  });
                },
                items: <String>[
                  'جدة',
                  'الرياض',
                  'مكة',
                  'المدينة المنورة',
                  'ابها',
                  'تبوك',
                  'حائل',
                  'عرعر',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,style: GoogleFonts.roboto(
                      color: Colors.black,
                  ),
                  ));
                }).toList(),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.0, // التباعد الأفقي
                vertical: 16.0,   // التباعد العمودي
              ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 2.w,
                    color: AppColors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 2.w,
                    color: AppColors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 2.w,
                    color: AppColors.black,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 2.w,
                    color: AppColors.red,
                  ),
                )),
            ),
        ),
            Row(
              children: [
                SizedBox(
                  width: 190.w,
                    child: EditTextWidget(star: '',name: 'City', size: 15, controller: _nameTextController)),
                SizedBox(
                    width: 160.w,
                    child: EditTextWidget(star: '',name: 'Postal code', size: 15, controller: _nameTextController)),

              ],
            ),
            EditTextWidget(star: '',name: 'Street', size: 15, controller: _nameTextController),
            EditTextWidget(star: '',name: 'Vat', size: 15, controller: _nameTextController),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.black12,
                  focusColor: Colors.white,
                  checkColor: AppColors.black,
                  value: _check,
                  onChanged: (value) {
                    setState(() {
                      _check = !_check;
                    });
                  },
                ),
                Text(
                  'Other address to deliver',
                  style: TextStyle(color: AppColors.grey2),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Totla:',style: GoogleFonts.roboto(
                          color: AppColors.black2,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400
                      ),),
                      SizedBox(height: 8.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                        Image.asset('assets/images/coin.png',width: 24.w,height: 24.h,),
                          SizedBox(width: 4.w,),
                          Text('24.55 BNB',style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500
                        ),)
                      ],)
                    ],
                  ),
                  ButtonProfileWidget(name: 'Next', onTap:_incrementCustomStepper, nameColorBorder: Colors.white, BackgroundColor: AppColors.black2)
                ],
              ),
            )












          ],
        ),
      ),

    );
  }
}
