import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yummy/app/data/app_color.dart';
import 'package:yummy/app/data/app_text_style.dart';
import 'package:yummy/app/data/image_path.dart';
import 'package:yummy/app/routes/app_pages.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  bool? isChecked = false;

  SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 270.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.skyColor.withAlpha(100),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign in", style: AppTextStyles.bold32),
                        Text(
                          "Welcome to yummy!",
                          style: AppTextStyles.bold18.copyWith(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(width:,),
                  Expanded(child: Image.asset(ImagePath.signIn, height: 250)),
                ],
              ),
            ),
        
            SizedBox(height: 20.h),
        
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your email address",
                      labelText: "Email address",
                    ),
                  ),
                  SizedBox(height: 30.h),
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
                  SizedBox(height: 20),
                  buildCheckBoxRow(),
                  SizedBox(height: 160),
        
        
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(backgroundColor: AppColors.skyColor),
                              child: Row(children: [
                          Icon(Icons.apple),
                                SizedBox(width: 10,),
                                Text("Facebook",style:TextStyle(color: AppColors.blackColor, fontSize: 16,)),
                          ],)),
                        ),
                      ),
                      SizedBox(width: 10,),
        
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(backgroundColor: AppColors.blackColor),
                              child: Row(children: [
                            Icon(Icons.apple),
                            SizedBox(width: 10,),
                            Text("Apple",style:TextStyle(color: AppColors.whiteColor, fontSize: 16,)),
                          ],)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {Get.toNamed(Routes.HOME);},
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: AppColors.blackColor, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Do not have an account?",style: TextStyle(color: AppColors.greyColor,fontSize: 18),),
                    InkWell(
                      onTap: (){Get.toNamed(Routes.SIGN_UP);},

                        child: Text("Sign up",style: TextStyle(color: AppColors.skyColor,fontSize: 18),)),
                  ],)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }






















































  Row buildCheckBoxRow() {
    return Row(
      children: [
        Obx(
          () => Checkbox(
            value: controller.checked.value,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(4)),
            ),
            activeColor: AppColors.greyColor,
            onChanged: (a) {
              controller.isChecked(a!);
            },
          ),
        ),
        Text(
          "Remember me",
          style: TextStyle(
            color: AppColors.greyColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(width: 92.w),
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Text(
              "Forgot Password?",
              maxLines: 1,
              style: TextStyle(
                color: AppColors.skyColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
