import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  FocusNode email_f = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: 96.w,
              height: 100.h,
            ),
            Center(
              child: Image.asset('lib/assets/logo.jpg'),
            ),
            SizedBox(
              height: 120.h,
            ),
            Container(
              height: 44.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.r)),
              child: TextField(
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
                controller: email,
                focusNode: email_f,
                decoration: InputDecoration(
                    hintText: 'email',
                    prefixIcon: Icon(Icons.email),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
