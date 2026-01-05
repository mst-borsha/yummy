import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:yummy/app/routes/app_pages.dart';

import '../../../data/app_color.dart';
import '../../../data/app_text_style.dart';
import '../../../data/image_path.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.skyColor.withAlpha(100),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create Account", style: AppTextStyles.bold32,overflow: TextOverflow.ellipsis,),
                      Text(
                        "Sign up and experience \nthe service",
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.regular16.copyWith(
                          color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(width:,),
                Expanded(child: Image.asset(ImagePath.signUp, height: 200)),
              ],
            ),
          ),


          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.h,vertical: 20.w),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter your full name',labelText: 'Full name',),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter your email address',labelText: 'Email address',),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter your number phone',labelText: 'Number phone',),
                ),
                SizedBox(height: 10,),
                Obx(
                      () => TextFormField(
                    obscureText: controller.isVisible.value,
                    decoration: InputDecoration(
                      hintText: "Enter your  Password",
                      labelText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.isVisibleOnPress();
                        },
                        icon: Icon(
                          controller.isVisible.value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                    }, child: Text("Create Account"))),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(color: AppColors.greyColor,fontSize: 18),),
                    InkWell(
                        onTap: (){Get.toNamed(Routes.SIGN_IN);},

                        child: Text("Sign in",style: TextStyle(color: AppColors.skyColor,fontSize: 18),)),
                  ],)

              ],
            ),
          )
        ],
      ),

    );
  }
}
