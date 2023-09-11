import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft/widget/button_widget.dart';
import 'package:nft/widget/icon_button_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController _phoneTextController;
  late TextEditingController _passwordTextController;

  String? _passwordError;
  bool _showPassword = false;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _phoneTextController = TextEditingController();
    _passwordTextController = TextEditingController();

    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _navigateToRegister;
    // _tapGestureRecognizer.onTap = _navigateToRegister;
  }

  void _navigateToRegister() =>
      Navigator.pushNamed(context, '/register_screen');

  @override
  void dispose() {
    _phoneTextController.dispose();
    _passwordTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Log in'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    label: SizedBox(
                      width: 120.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Phone number'),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
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
                obscureText: !_showPassword,
                expands: false,
                decoration: InputDecoration(
                    errorText: _passwordError,
                    label: SizedBox(
                      width: 120.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Password'),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
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
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      icon: Icon(
                        _showPassword ? Icons.visibility_off : Icons.visibility,
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
              padding: EdgeInsets.only(top: 5.h, left: 20.w),
              child: RichText(
                text: TextSpan(
                  text: 'Forget password ? ',
                  style: TextStyle(
                    color: Color(0xff9391A4),
                    fontSize: 14.sp,
                  ),
                  children: [
                    // TextSpan(text: ' '),
                    TextSpan(
                      text: 'Tap here',
                      recognizer: _tapGestureRecognizer,
                      style: TextStyle(
                        color: Color(0xff7B61FF),
                        fontSize: 14.sp
                      ),
                    )
                  ],
                ),
              ),
            ),
            ButtonWidget(name: 'Log in'),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 15.w,),
                IconButtonWidget(name: 'Google',img: 'assets/icon/google.png',),
                SizedBox(width: 5.w,),
                IconButtonWidget(name: 'Apple',img: 'assets/icon/appstore.png',),
                SizedBox(width: 15.w,),

              ],
            )



          ],
        ),
      ),
    );
  }
}


