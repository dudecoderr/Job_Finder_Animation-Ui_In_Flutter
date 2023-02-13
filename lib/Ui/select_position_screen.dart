import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '../BottomNavigationBar/bottom_navigation_bar.dart';
import '../String Files/text_string.dart';
import 'onbording_screen.dart';

class SelectPositionScreen extends StatefulWidget {
  const SelectPositionScreen({Key? key}) : super(key: key);

  @override
  State<SelectPositionScreen> createState() => _SelectPositionScreenState();
}

class _SelectPositionScreenState extends State<SelectPositionScreen> {
  List<String> SelectPositionList = [
    "Develope",
    "Marketing",
    "Recruiter",
    "Design",
    "Lead Generation",
    "HR",
    "QA",
    "Sales Customer",
    "Technical Support",
    "UI/UX",
    "Backend Engineer",
    "Manager",
  ];
  List<String>? SelectPosition = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45, right: 20, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          Skip,
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 25.h),
                      PhloxAnimations(
                        duration: Duration(seconds: 1),
                        fromDegrees: -90,
                        fromScale: 0,
                        fromOpacity: 0.1,
                        fromY: -100,
                        fromX: -200,
                        child: Text(
                          Select_your_position,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Wrap(
                        children: SelectPositionList.map(
                          (hobby) {
                            bool isSelected = false;
                            if (SelectPosition!.contains(hobby)) {
                              isSelected = true;
                            }
                            return GestureDetector(
                              onTap: () {
                                if (!SelectPosition!.contains(hobby)) {
                                  if (SelectPosition!.length < 5) {
                                    SelectPosition!.add(hobby);
                                    setState(() {});
                                    print(SelectPosition);
                                  }
                                } else {
                                  SelectPosition!.removeWhere(
                                      (element) => element == hobby);
                                  setState(() {});
                                  print(SelectPosition);
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(18),
                                child: PhloxAnimations(
                                  duration: const Duration(seconds: 1),
                                  fromX: -40,
                                  fromY: 100,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.greenAccent.shade100
                                          : Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18.r),
                                    ),
                                    padding: EdgeInsets.all(14),
                                    child: Text(
                                      hobby,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.sp),
                                    ),
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Onbording()));
                    },
                    child: Container(
                      height: 45.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.r),
                          border:
                              Border.all(color: Colors.black, width: 1.5.w)),
                      child: Icon(Icons.arrow_back, size: 25.sp),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 45.h,
                    width: 130.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavigation()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      child: const Text(Get_Started),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
