import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/login_controller.dart'; // ignore_for_file: must_be_immutable

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 20.h,
            right: 24.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_what_s_your_phone".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.displaySmall!.copyWith(
                  height: 1.39,
                ),
              ),
              SizedBox(height: 34.h),
              CustomTextFormField(
                controller: controller.phoneNumberController,
                hintText: "lbl_phone_number".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.phone,
                contentPadding: EdgeInsets.all(12.h),
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "err_msg_please_enter_valid_phone_number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 24.h),
              Container(
                width: 338.h,
                margin: EdgeInsets.only(right: 2.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_by_tapping_next2".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "lbl_account_terms".tr,
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                      TextSpan(
                        text: "lbl_and_acknowledge".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "lbl_privacy_policy".tr,
                        style: CustomTextStyles.bodyMediumPrimary,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 20.h),
              CustomElevatedButton(
                text: "lbl_next".tr,
              ),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgERemove,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.h,
          bottom: 6.h,
        ),
      ),
    );
  }
}
