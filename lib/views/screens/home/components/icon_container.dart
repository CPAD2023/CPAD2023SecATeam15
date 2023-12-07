import 'package:ai_image_generator/Utils/app_color.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final Widget widget;
  const IconContainer({super.key, required this.widget});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Container(
      height: 60,
      width: size.width * 0.33,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(.15),
                offset: const Offset(2,0)
            ),
            BoxShadow(
                color: Colors.white.withOpacity(.15),
                offset: const Offset(0,2)
            ),
            BoxShadow(
                color: Colors.white.withOpacity(.2),
                offset: const Offset(0,0)
            ),
            BoxShadow(
                color: Colors.white.withOpacity(.2),
                offset: const Offset(0,0)
            ),
          ]
      ),
      child: widget,
    );
  }
}