import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/dashboard_controller.dart';
import '../models/dashboardgrid_item_model.dart';

// ignore_for_file: must_be_immutable
class DashboardgridItemWidget extends StatelessWidget {
  DashboardgridItemWidget(this.dashboardgridItemModelObj, {Key? key})
      : super(
          key: key,
        );

  DashboardgridItemModel dashboardgridItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 14.h,
        top: 12.h,
        bottom: 12.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.indigoA100,
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h),
          Obx(
            () => CustomImageView(
              imagePath: dashboardgridItemModelObj.stepsOne!.value,
              height: 58.h,
              width: 46.h,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 10.h),
            ),
          ),
          SizedBox(height: 18.h),
          Obx(
            () => Text(
              dashboardgridItemModelObj.stepsTwo!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 4.h),
          Obx(
            () => Text(
              dashboardgridItemModelObj
                  .elevenThousandEightHundredFiftySeven!.value,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 2.h),
          Obx(
            () => Text(
              dashboardgridItemModelObj.time!.value,
              style: theme.textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }
}
