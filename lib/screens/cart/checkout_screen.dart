import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft/constants/app.colors.dart';
import 'package:nft/models/bn_item.dart';
import 'package:nft/screens/bn_cart.dart';
import 'package:nft/screens/cart/checkout2_screen.dart';
import 'package:nft/screens/cart/checkout3_Screen.dart';
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
  String selectedOption = 'Option 1';


  late TextEditingController _nameTextController;
  late TextEditingController _locationrController;
  late TextEditingController _creditCard;

  @override
  void initState() {
    super.initState();
    _nameTextController = TextEditingController();
    _locationrController = TextEditingController();
    _creditCard = TextEditingController();

  }


  @override
  void dispose() {
    _nameTextController.dispose();
    _locationrController.dispose();
    _creditCard.dispose();

    super.dispose();
  }

  final List<BnItem> _bnScreens = <BnItem>[
    const BnItem(widget: CheckoutScreen(), title: 'Checkout'),
    const BnItem(widget: CheckoutScreen2(), title: 'Checkout'),
    const BnItem(widget: CheckoutScreen3(), title: 'Checkout'),
  ];

  String selectedValue = 'جدة';
  int _customCounter = 1;
  void _incrementCustomStepper() {
    setState(() {
      if (_customCounter <= 3) {
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
      body: _customCounter==1
          ?SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 400.0.w,
                      height: 60.0.h,
                      child: StepperWidget(num: 1,)),
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
          )
              :_customCounter == 2
          ?SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 400.0,
                    height: 70.0,
                    child: StepperWidget(num: 2,)),
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
                customRadioTile(
                  'Fedex',
                  'Option 1',
                  14.00,
                  selectedOption,
                      (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                SizedBox(height: 10.h,),
                customRadioTile(
                  'DHL Worldwide',
                  'Option 2',
                  14.00,
                  selectedOption,
                      (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                SizedBox(height: 10.h,),
                customRadioTile(
                  'Fedex Express',
                  'Option 3',
                  14.00,
                  selectedOption,
                      (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white,

                  ),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text('Inpost - Parcel locker'),
                        value: 'Option 4',
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                        secondary:Text('+\$4.00') ,
                      ),
                      EditTextWidget(star: '*',controller: _locationrController,name: 'Location',size: 20,),
                    ],
                  ),
                ),
                Spacer(),
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
          )
              :ListView(
                    children: [
              SizedBox(
                  width: 400.0.w,
                  height: 70.0.h,
                  child: StepperWidget(num: 3,)),
              Padding(
                padding: EdgeInsets.only(top: 5.h, left: 20.w, bottom: 5.h),
                child: Text(
                  '3. Choose a payment method',
                  style: GoogleFonts.roboto(
                      fontSize: 26.sp,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                title: Text('Credit Card'),
                value: 'Option 1',
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              Padding(
                padding:  EdgeInsets.only(left: 16.w,right: 16.w),
                child: TextField(
                  controller: _creditCard,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.credit_card_outlined),
                      // contentPadding: EdgeInsets.symmetric(vertical: size),
                      label: Padding(
                        padding:  EdgeInsets.only(left: 20.w),
                        child: SizedBox(
                          width: 130.w,
                          child: Text('Credit Card',style: GoogleFonts.roboto(
                            color: Colors.black,

                          ),),
                        ),
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
              SizedBox(height: 22.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 16.w,),
                  SizedBox(
                    height: 56.h,
                    width: 159.w,
                    child: TextField(
                      controller: _creditCard,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          label: Padding(
                            padding:  EdgeInsets.only(left: 20.w),
                            child: SizedBox(
                              width: 130.w,
                              child: Text('MM/YY',style: GoogleFonts.roboto(
                                color: Colors.black,

                              ),),
                            ),
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
                  SizedBox(width: 16.w,),
                  SizedBox(
                    height: 56.h,
                    width: 159.w,
                    child: TextField(
                      controller: _creditCard,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          label: Padding(
                            padding:  EdgeInsets.only(left: 20.w),
                            child: SizedBox(
                              width: 130.w,
                              child: Text('CVC',style: GoogleFonts.roboto(
                                color: Colors.black,

                              ),),
                            ),
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
                  SizedBox(width: 16.w,),

                ],
              ),
              RadioListTile(
                title: Text('Moyasar'),
                value: 'Option 2',
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              Padding(
                padding:  EdgeInsets.only(left: 24.w,bottom: 24.h),
                child: Text('Summary',style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp
                ),),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal',style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp
                        )),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/coin.png',
                              fit: BoxFit.contain,
                              height: 18.h,
                              width: 18.h,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text('0.49 BNB',style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp
                            )),
                          ],
                        )

                      ],
                    ),
                    SizedBox(height: 16.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery',style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp
                        )),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/coin.png',
                              fit: BoxFit.contain,
                              height: 18.h,
                              width: 18.h,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text('0.49 BNB',style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp
                            )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('VAT',style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp
                            )),
                            Text('(Czech Republic)'),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/coin.png',
                              fit: BoxFit.contain,
                              height: 18.h,
                              width: 18.h,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text('0.49 BNB',style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp
                            )),
                          ],
                        )

                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Discounted price',style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp
                    )),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/coin.png',
                          fit: BoxFit.contain,
                          height: 18.h,
                          width: 18.h,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text('0.49 BNB',style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp
                        )),
                      ],
                    )

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    ButtonProfileWidget(name: 'Pay Now', onTap:(){}, nameColorBorder: Colors.white, BackgroundColor: AppColors.black2)
                  ],
                ),
              )






                    ],
                  )


















    );
  }
  Widget customRadioTile(String titleText,String value,double num, String groupValue, Function(String) onChanged) {
    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Row(
        children: [
          Expanded(
            child: RadioListTile(
              title: Text(titleText),
              value: value,
              groupValue: groupValue,
              onChanged: (value) {
                onChanged(value!);
              },
              secondary:Text(num.toString()) ,
            ),
          ),
        ],
      ),
    );
  }

}
