import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  String name;
   ButtonWidget({
    super.key,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        height: 60.h,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(name,style: TextStyle(
            fontSize: 18.sp
          ),),
          style: ElevatedButton.styleFrom(
              primary: Color(0xFF191B23),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r)
              )
          ),

        ),
      ),
    );
  }
}
