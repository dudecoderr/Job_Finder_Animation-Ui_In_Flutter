import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '../String Files/text_string.dart';

class Button_horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            icon: Icons.close,
            text: designer,
          ),
          Category(
            icon: Icons.close,
            text: Canada,
          ),
          Category(
            icon: Icons.close,
            text: years2,
          ),
          Category(
            icon: Icons.close,
            text: fulltime,
          ),
          Category(
            icon: Icons.close,
            text: string1,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final IconData? icon;
  final String? text;
  Category({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: () {},
        child: PhloxAnimations(
          duration: const Duration(seconds: 1),
          fromX: 60,
          // fromY: 100,
          child: Container(
              height: 45.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      text!,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      icon,
                      color: Colors.grey.shade900,
                      size: 20,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
