import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft/constants/app.colors.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({super.key});

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  String? _chosenValue;
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = GoogleFonts.roboto(color: AppColors.grey2, fontSize: 16.0);
    TextStyle linkStyle = GoogleFonts.roboto(color: AppColors.purple,fontSize: 16.0);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Create NFT',style: GoogleFonts.roboto(color: Colors.black,fontSize: 14),),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Image.asset('assets/icon/back.png',),
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Create an NFT',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 16,),
                      Text('Import image, video or audio',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(height: 16,),
                      Text('File types supported: JPGM PNG, IF, SVG, MP3, WAV, MP4, MAX size 50 MB',style: GoogleFonts.roboto(fontSize: 14,color: AppColors.grey2),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: DottedBorder(
                    color: Color(0xFFEBE7FF),
                    strokeWidth: 2,
                    dashPattern: [
                      5,
                      5,
                    ],
                    child: SizedBox(
                      height: 200,
                      width: 350,
                      child: Container(
                        padding: const EdgeInsets.all(
                            16.0),
                        child: Center(
                          child: Stack(
                            children: [
                              Center(child: Image.asset('assets/images/ellipse.png')),
                              Center(child: Image.asset('assets/images/download.png')),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        label: SizedBox(
                          width: 120.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name'),
                              Text(
                                "*",
                                style: GoogleFonts.roboto(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide:  BorderSide(
                            width: 2.w,
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide:  BorderSide(
                            width: 2.w,
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide:  BorderSide(
                            width: 2.w,
                            color: Colors.black,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide:  BorderSide(
                            width: 2.w,
                            color: Colors.red,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: "Enter a description here...",
                        label: SizedBox(
                          width: 120.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Description'),
                              Text(
                                "*",
                                style: GoogleFonts.roboto(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide:  BorderSide(
                            width: 2.w,
                            color: Colors.black,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide:  BorderSide(
                            width: 2.w,
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide:  BorderSide(
                            width: 2.w,
                            color: Colors.black,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide:  BorderSide(
                            width: 2.w,
                            color: Colors.red,
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 70,
                      child: Container(
                        child: InputDecorator(
                          decoration: InputDecoration(
                            labelText: 'Network',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),

                          ),
                        child: DropdownButton<String>(
                          focusColor:Colors.white,
                          value: _chosenValue,
                          //elevation: 5,
                          style: GoogleFonts.roboto(color: Colors.white),
                          iconEnabledColor:Colors.black,
                          items: <String>[
                            'BSC' , 'BNB'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(value,style:GoogleFonts.roboto(color:Colors.black,),),
                              ),
                            );
                          }).toList(),
                          hint:Center(
                            child: Text(
                              'BNB',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _chosenValue = value;
                            });
                          },
                        ),
                      ),
                  ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),

                  child: RichText(
                    text: TextSpan(
                        style: defaultStyle,
                        children: <TextSpan>[
                          TextSpan(text: 'The network of item should be same as the collection’s. For more details, check ',),
                          TextSpan( style: linkStyle,text: 'here '),

                        ]
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(16.0),
                child: Text('Collection',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('+ Create new collection',style: GoogleFonts.roboto(
                        fontSize: 18.sp,
                        color: AppColors.purple,
                      ),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEBE7FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.r)
                          )
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),

                  child: RichText(
                    text: TextSpan(
                        style: defaultStyle,
                        children: <TextSpan>[
                          TextSpan(text: 'Select a collection for this item. Once selected and minted, it cannot be modified. If you do not have one, please ',),
                          TextSpan( style: linkStyle,text: 'create a new collection. '),

                        ]
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(16.0),
                  child: Text('Properties',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: DottedBorder(
                    color: Color(0xFFEBE7FF),
                    strokeWidth: 2,
                    dashPattern: [
                      5,
                      5,
                    ],
                    child: SizedBox(
                      height: 150,
                      width: 350,
                      child: Container(
                        padding: const EdgeInsets.all(
                            16.0),
                        child: Center(
                          child: Stack(
                            children: [
                              Center(child: Image.asset('assets/images/ellipse.png')),
                              Center(child: Icon(Icons.add,color: AppColors.purple,size: 30,))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text('Fee',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold)),
                      SizedBox(width: 120,),
                      ElevatedButton(onPressed: (){}, child: Text('estimate',style: GoogleFonts.roboto(fontSize: 12,color: Colors.black),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.r)
                            )
                        ),

                      ),
                      SizedBox(width: 8,),
                      // Image.asset('asset/icon/ethereum.png'),
                      SizedBox(width: 8,),
                      Text('0.005 BNB',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold)),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Checkbox(   activeColor: Colors.grey, value:true, onChanged:(value) {

                      },),
                      Text('I understand and agree to BNB NFT’s \nMinting Rules and terms ')
                    ],
                  ),
                ),
                Divider(
                    color: AppColors.grey2,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Fee:',style: GoogleFonts.roboto(fontSize: 16,)),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              // Image.asset('asset/icon/ethereum.png'),
                              SizedBox(width: 8,),
                              Text('0.005 BNB',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 70,),
                      SizedBox(
                        height: 60,
                        width: 179,
                        child: ElevatedButton(onPressed: (){}, child: Text('Create',style: GoogleFonts.roboto(fontSize: 16,color: AppColors.grey),),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.r)
                              )
                          ),

                        ),
                      ),

                    ],
                  ),
                ),



              ],
            ),
          ],
        ),
      ),
    );
  }
}
