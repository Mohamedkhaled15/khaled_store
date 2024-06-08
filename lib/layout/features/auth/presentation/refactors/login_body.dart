import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_store/core/common/animations/animate_do.dart';
import 'package:khaled_store/core/common/widgets/text_app.dart';
import 'package:khaled_store/core/extensions/context_ext.dart';
import 'package:khaled_store/core/language/lang_keys.dart';
import 'package:khaled_store/core/routes/app_routes.dart';
import 'package:khaled_store/core/style/fonts/font_weight_helper.dart';
import 'package:khaled_store/layout/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:khaled_store/layout/features/auth/presentation/widgets/dark_and_lang_buttons.dart';
import 'package:khaled_store/layout/features/auth/presentation/widgets/login_widgets/login_button.dart';
import 'package:khaled_store/layout/features/auth/presentation/widgets/login_widgets/login_text_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DarkAndLangButtons(),
            SizedBox(height: 50.h),
            AuthTitleInfo(
              title: context.translate(AppLocaleKey.login),
              description: context.translate(AppLocaleKey.welcome),
            ),
            SizedBox(height: 30.h),
            const LoginTextForm(),
            SizedBox(height: 60.h),
            const LoginButton(),
            SizedBox(height: 30.h),
            CustomFadeInDown(
              duration: 400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.signUp);
                },
                child: AppText(
                  text: context.translate(AppLocaleKey.createAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
