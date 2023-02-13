import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '../Constant File/horizontal_button_constant.dart';
import '../Constant File/offer_container_constant.dart';
import '../String Files/text_string.dart';

class Deshboard_Page extends StatefulWidget {
  final String? job_title;
  final String? sub_tital;
  const Deshboard_Page({Key? key, this.job_title, this.sub_tital})
      : super(key: key);

  @override
  State<Deshboard_Page> createState() => _Deshboard_PageState();
}

class _Deshboard_PageState extends State<Deshboard_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          Container(
            // width: 446,
            // height: 210,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45, right: 15, left: 12),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                          size: 21.sp,
                        ),
                      ),
                      SizedBox(width: 25.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.sub_tital!,
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 16.sp),
                          ),
                          Text(
                            widget.job_title!,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Button_horizontal(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          SizedBox(height: 109),
          Padding(
            padding: const EdgeInsets.only(top: 190),
            child: Container(
              height: 600.h,
              width: 414.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r)),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.h),
                      Text(
                        job_Description,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        job_Description_sub,
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            // fontWeight: FontWeight.bold,
                            fontSize: 16.sp),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        responsibilities,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ),
                      SizedBox(height: 20.h),

                      ///==================== responsibilites chack box ===================
                      Column(
                        children: [
                          PhloxAnimations(
                            duration: const Duration(milliseconds: 800),
                            fromX: 200,
                            // fromY: 100,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_box_sharp,
                                  size: 30.sp,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  developing_2d,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ),
                          //=============== 2----------------
                          PhloxAnimations(
                            duration: const Duration(milliseconds: 900),
                            fromX: 200,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_box_sharp,
                                  size: 30.sp,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                SizedBox(
                                  width: 280.w,
                                  child: Text(
                                    creating_Sub,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16.sp),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //============== 3==================
                          PhloxAnimations(
                            duration: const Duration(milliseconds: 1000),
                            fromX: 200,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_box_sharp,
                                  size: 30.sp,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  Creating_Motion,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ),
                          //========= 4================
                          PhloxAnimations(
                            duration: const Duration(milliseconds: 1100),
                            fromX: 200,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_box_sharp,
                                  size: 30.sp,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  upper_intermediate,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),

                      Text(
                        what_We_Offer,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ),
                      SizedBox(height: 20.h),
                      OfferContainer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 45.h,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  child: const Text(
                    apply,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
