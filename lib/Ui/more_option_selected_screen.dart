import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder_flutter_ui/Ui/homePage.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '../Constant File/option_constant.dart';
import '../String Files/image_string.dart';
import '../String Files/text_string.dart';

class More_option_selected_screen extends StatefulWidget {
  const More_option_selected_screen({Key? key}) : super(key: key);

  @override
  State<More_option_selected_screen> createState() =>
      _More_option_selected_screenState();
}

class _More_option_selected_screenState
    extends State<More_option_selected_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
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
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             FilterSearchPage()));
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
                  SizedBox(height: 28.h),

                  ///___________________Job_title____________________________________
                  PhloxAnimations(
                    duration: const Duration(seconds: 1),
                    fromY: 100,
                    fromX: -50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Job_title,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: jobtital.map(
                            (hobby) {
                              bool isSelected = false;
                              if (JobTital!.contains(hobby)) {
                                isSelected = true;
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!JobTital!.contains(hobby)) {
                                    if (JobTital!.length < 5) {
                                      JobTital!.add(hobby);
                                      setState(() {});
                                      print(JobTital);
                                    }
                                  } else {
                                    JobTital!.removeWhere(
                                        (element) => element == hobby);
                                    setState(() {});
                                    print(JobTital);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),

                  ///___________________ Country ___________________________________
                  SizedBox(height: 28.h),

                  PhloxAnimations(
                    duration: const Duration(seconds: 1),
                    fromY: 100,
                    fromX: -50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Country,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: country.map(
                            (hobby) {
                              bool isSelected = false;
                              if (CountryTital!.contains(hobby)) {
                                isSelected = true;
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!CountryTital!.contains(hobby)) {
                                    if (CountryTital!.length < 5) {
                                      CountryTital!.add(hobby);
                                      setState(() {});
                                      print(CountryTital);
                                    }
                                  } else {
                                    CountryTital!.removeWhere(
                                        (element) => element == hobby);
                                    setState(() {});
                                    print(CountryTital);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),

                  ///================ Work_experience ==============
                  const SizedBox(
                    height: 20,
                  ),
                  PhloxAnimations(
                    duration: const Duration(seconds: 1),
                    fromY: 100,
                    fromX: -50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          work_experience,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: Work_experience.map(
                            (hobby) {
                              bool isSelected = false;
                              if (Work_experience_Tital!.contains(hobby)) {
                                isSelected = true;
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!Work_experience_Tital!.contains(hobby)) {
                                    if (JobTital!.length < 5) {
                                      Work_experience_Tital!.add(hobby);
                                      setState(() {});
                                      print(Work_experience_Tital);
                                    }
                                  } else {
                                    Work_experience_Tital!.removeWhere(
                                        (element) => element == hobby);
                                    setState(() {});
                                    print(Work_experience_Tital);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),

                  ///================ Employment ==============

                  const SizedBox(
                    height: 20,
                  ),
                  PhloxAnimations(
                    duration: const Duration(seconds: 1),
                    fromY: 100,
                    fromX: -50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          employment,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: Employment.map(
                            (hobby) {
                              bool isSelected = false;
                              if (Employment_list!.contains(hobby)) {
                                isSelected = true;
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!Employment_list!.contains(hobby)) {
                                    if (Employment_list!.length < 5) {
                                      Employment_list!.add(hobby);
                                      setState(() {});
                                      print(Employment_list);
                                    }
                                  } else {
                                    Employment_list!.removeWhere(
                                        (element) => element == hobby);
                                    setState(() {});
                                    print(Employment_list);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),

                  ///================ Salary from ==============
                  const SizedBox(
                    height: 20,
                  ),
                  PhloxAnimations(
                    duration: const Duration(seconds: 1),
                    fromY: 100,
                    fromX: -50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          salary_from,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: Salary.map(
                            (hobby) {
                              bool isSelected = false;
                              if (Salary_list!.contains(hobby)) {
                                isSelected = true;
                              }
                              return GestureDetector(
                                onTap: () {
                                  if (!Salary_list!.contains(hobby)) {
                                    if (Salary_list!.length < 5) {
                                      Salary_list!.add(hobby);
                                      setState(() {});
                                      print(Salary_list);
                                    }
                                  } else {
                                    Salary_list!.removeWhere(
                                        (element) => element == hobby);
                                    setState(() {});
                                    print(Salary_list);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                ],
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  child: const Text(
                    submit,
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
