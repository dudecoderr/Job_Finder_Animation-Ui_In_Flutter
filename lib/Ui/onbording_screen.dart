import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder_flutter_ui/Ui/select_position_screen.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '../Constant File/content_constant_file.dart';
import '../String Files/text_string.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(top: 50, right: 40, left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SelectPositionScreen()));
                          },
                          child: Text(
                            Skip,
                            style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      PhloxAnimations(
                        duration: const Duration(seconds: 1),
                        fromY: -100,
                        // fromX: -50,
                        child: Image.asset(
                          contents[i].image!,
                          height: 280.h,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                            (index) => buildDot(index, context),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 75,
                      ),
                      PhloxAnimations(
                        duration: const Duration(seconds: 1),
                        fromDegrees: 40,
                        fromScale: 0,
                        fromOpacity: 0.1,
                        // fromY: -100,
                        fromX: 100,
                        child: Text(
                          contents[i].title!,
                          style: TextStyle(
                              fontSize: 35.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 18),
                      PhloxAnimations(
                        duration: const Duration(seconds: 1),
                        fromDegrees: 40,
                        fromScale: 0,
                        fromOpacity: 0.1,
                        // fromY: -100,
                        fromX: 100,
                        child: Text(
                          contents[i].discription!,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    _controller.previousPage(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                  child: Container(
                    height: 45.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(color: Colors.black, width: 1.5.w)),
                    child: Icon(Icons.arrow_back, size: 25.sp),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 45.h,
                  width: 130.w,
                  child: ElevatedButton(
                    child: const Text(Next),
                    onPressed: () {
                      if (currentIndex == contents.length - 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SelectPositionScreen(),
                          ),
                        );
                      }
                      _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 5,
      width: currentIndex == index ? 40 : 25,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.black : Colors.grey.shade400,
      ),
    );
  }
}
