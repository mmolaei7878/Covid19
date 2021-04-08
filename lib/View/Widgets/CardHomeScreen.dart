import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Color(0xff0A93F1),
              elevation: 10,
            ),
          ),
          Positioned.fill(
            top: -10.0.h,
            child: Container(
              margin: EdgeInsets.only(bottom: 4),
              child: Image.asset(
                'lib/Asset/images/nurse2.png',
                fit: BoxFit.contain,
                alignment: Alignment.topLeft,
              ),
            ),
          ),
          Positioned(
            right: 0,
            height: 27.0.h,
            width: 38.0.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: Text(
                    'Covid 19',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 17.0.sp),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Text(
                    'protect your self and your family from covid 19',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Colors.white60,
                          fontSize: 14.0.sp,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
