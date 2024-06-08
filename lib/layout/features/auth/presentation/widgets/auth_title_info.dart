import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_store/core/common/animations/animate_do.dart';
import 'package:khaled_store/core/common/widgets/text_app.dart';
import 'package:khaled_store/core/extensions/context_ext.dart';
import 'package:khaled_store/core/style/fonts/font_weight_helper.dart';

class AuthTitleInfo extends StatelessWidget {
  const AuthTitleInfo({
    required this.title,
    required this.description,
    super.key,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          AppText(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 24.sp,
              color: context.color.textColor,
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          AppText(
            text: description,
            theme: context.textStyle.copyWith(
              fontSize: 14.sp,
              color: context.color.textColor,
              fontWeight: FontWeightHelper.regular,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
