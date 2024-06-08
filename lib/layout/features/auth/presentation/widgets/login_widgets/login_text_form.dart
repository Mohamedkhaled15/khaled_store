import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:khaled_store/core/common/animations/animate_do.dart';
import 'package:khaled_store/core/common/widgets/custom_text_field.dart';
import 'package:khaled_store/core/extensions/context_ext.dart';
import 'package:khaled_store/core/language/lang_keys.dart';
import 'package:khaled_store/core/utils/app_regex.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(AppLocaleKey.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid(value!)) {
                  return context.translate(AppLocaleKey.validEmail);
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 25.h),
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(AppLocaleKey.password),
              obscureText: isShowPassword,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translate(AppLocaleKey.validPasswrod);
                }
                return null;
              },
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: Icon(
                  isShowPassword ? Icons.visibility_off : Icons.visibility,
                  color: context.color.textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
