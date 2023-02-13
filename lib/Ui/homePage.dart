import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant File/home_page_container_constant.dart';
import '../Constant File/horizontal_button_constant.dart';
import '../String Files/image_string.dart';
import '../String Files/text_string.dart';
import 'more_option_selected_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // color: Colors.yellowAccent,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(profile_1),
                          radius: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                WELLCOME_BACK,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.sp),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                JulieBell,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.notifications_none_outlined,
                          size: 25.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    Find_job_today,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ///__________________________ search Container___________________________
                  Row(
                    children: [
                      SizedBox(
                        width: 250.w,
                        height: 50.h,
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black),
                          // controller: searchController.searchTextController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                          onChanged: (value) {
                            // searchController.searchString!.value = value;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                borderSide: BorderSide(color: Colors.black)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: 'Search here.....',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                borderSide:
                                    const BorderSide(color: Colors.black)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2)),
                            //labelText: 'Life story',
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.search,
                                size: 26.sp, color: Colors.black),
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 50.h,
                        width: 55.w,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        More_option_selected_screen()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          ),
                          child: const Icon(
                            Icons.format_list_bulleted,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            ///==================== Button_horizontal List ================================
            Button_horizontal(),

            ///==================== HomeContainerConstant List ================================
            HomeContainerConstant(),
          ],
        ),
      ),
    );
  }
}
