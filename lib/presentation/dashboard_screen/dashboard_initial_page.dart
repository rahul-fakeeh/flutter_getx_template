import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_circleimage.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/dashboard_controller.dart';
import 'models/dashboard_initial_model.dart';
import 'models/dashboardgrid_item_model.dart';
import 'widgets/dashboardgrid_item_widget.dart';

// ignore_for_file: must_be_immutable
class DashboardInitialPage extends StatelessWidget {
  DashboardInitialPage({Key? key})
      : super(
          key: key,
        );

  DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: _buildAppBar(),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 20.h,
                top: 12.h,
                right: 20.h,
              ),
              child: Column(
                children: [
                  _buildDateRow(),
                  SizedBox(height: 4.h),
                  _buildOverviewRow(),
                  SizedBox(height: 26.h),
                  _buildHealthScoreRow(),
                  SizedBox(height: 36.h),
                  _buildHighlightsRow(),
                  SizedBox(height: 16.h),
                  _buildDashboardGrid()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage7,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 10.h,
          bottom: 10.h,
        ),
      ),
      actions: [
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgAvatar1,
          margin: EdgeInsets.only(
            top: 6.h,
            right: 22.h,
            bottom: 6.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildDateRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLightMode1,
            height: 20.h,
            width: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "lbl_tues_11_jul".tr,
              style: theme.textTheme.labelLarge,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOverviewRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_overview".tr,
            style: theme.textTheme.headlineLarge,
          ),
          CustomOutlinedButton(
            width: 74.h,
            text: "lbl_all_data".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 4.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgRocketLaunch,
                height: 12.h,
                width: 12.h,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHealthScoreRow() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 190.h,
                      margin: EdgeInsets.only(
                        left: 2.h,
                        top: 8.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_health_score".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "msg_based_on_your_overview".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 1.57,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "lbl_tell_me_more".tr,
                                  style: CustomTextStyles.bodySmallPrimary,
                                ),
                                SizedBox(width: 4.h),
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowSmRight,
                                  height: 12.h,
                                  width: 12.h,
                                  alignment: Alignment.topCenter,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 72.h,
                    width: 72.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup13,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_78".tr,
                          style: CustomTextStyles.headlineSmallBold,
                        ),
                        SizedBox(height: 12.h)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHighlightsRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_highlights".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 2.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "lbl_view_more".tr,
                  style: CustomTextStyles.bodySmallBluegray800,
                ),
                SizedBox(width: 4.h),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowSmRightBlueGray800,
                  height: 12.h,
                  width: 12.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDashboardGrid() {
    return Obx(
      () => ResponsiveGridListBuilder(
        minItemWidth: 1,
        minItemsPerRow: 2,
        maxItemsPerRow: 2,
        horizontalGridSpacing: 16.h,
        verticalGridSpacing: 16.h,
        builder: (context, items) => ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: items,
        ),
        gridItems: List.generate(
          controller.dashboardInitialModelObj.value.dashboardgridItemList.value
              .length,
          (index) {
            DashboardgridItemModel model = controller.dashboardInitialModelObj
                .value.dashboardgridItemList.value[index];
            return DashboardgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
