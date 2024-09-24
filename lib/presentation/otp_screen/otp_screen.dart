import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_circleimage.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'controller/otp_controller.dart'; // ignore_for_file: must_be_immutable

class OtpScreen extends GetWidget<OtpController> {
  const OtpScreen({Key? key})
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
            left: 16.h,
            top: 28.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_6_digit_code".tr,
                  style: CustomTextStyles.titleLargeBold,
                ),
              ),
              SizedBox(height: 14.h),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "msg_enter_the_code_we".tr,
                  style: CustomTextStyles.bodyLarge16,
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: 324.h,
                padding: EdgeInsets.all(12.h),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "msg_code_is_expired".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_resend".tr,
                  style: CustomTextStyles.bodyLargePrimary,
                ),
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
      centerTitle: true,
      title: Column(
        children: [
          AppbarTitleCircleimage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(
              left: 20.h,
              right: 338.h,
            ),
          ),
          SizedBox(height: 22.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          )
        ],
      ),
      styleType: Style.bgFill,
    );
  }
}
