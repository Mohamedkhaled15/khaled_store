import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_store/core/common/animations/animate_do.dart';
import 'package:khaled_store/core/common/widgets/custom_linear_button.dart';
import 'package:khaled_store/core/common/widgets/text_app.dart';
import 'package:khaled_store/core/extensions/context_ext.dart';
import 'package:khaled_store/core/language/lang_keys.dart';
import 'package:khaled_store/core/style/fonts/font_weight_helper.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {},
            child: const Icon(
              Icons.light_mode_rounded,
              color: Colors.white,
            ),
          ),
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            height: 44.h,
            width: 100.w,
            onPressed: () {},
            child: AppText(
              text: context.translate(AppLocaleKey.language),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
