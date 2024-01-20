import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/text_styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_opacity.svg',),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0)
                ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4]
            )
          ),
            child: Image.asset('assets/images/onboarding_doctor.png')),
        Positioned(
          left: 20.h,
          right: 20.w,
          bottom: 30.h,
            child: Text(
          'Best Doctor Appointment App',
          textAlign: TextAlign.center,
          style: TextStyles.fontBlue32Bold,
        )),
      ],
    );
  }
}
