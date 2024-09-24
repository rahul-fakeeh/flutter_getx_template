import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'controller/dashboard_controller.dart';
import 'dashboard_initial_page.dart'; // ignore_for_file: must_be_immutable

class DashboardScreen extends GetWidget<DashboardController> {
  const DashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.dashboardInitialPage,
          onGenerateRoute: (routeSetting) => GetPageRoute(
            page: () => getCurrentPage(routeSetting.name!),
            transition: Transition.noTransition,
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomBar(),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Overview:
        return AppRoutes.dashboardInitialPage;
      case BottomBarEnum.Explore:
        return "/";
      case BottomBarEnum.Sharing:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardInitialPage:
        return DashboardInitialPage();
      default:
        return DefaultWidget();
    }
  }
}
