import '../../../core/app_export.dart';
import 'dashboardgrid_item_model.dart';

/// This class is used in the [dashboard_initial_page] screen.

// ignore_for_file: must_be_immutable
class DashboardInitialModel {
  Rx<List<DashboardgridItemModel>> dashboardgridItemList = Rx([
    DashboardgridItemModel(
        stepsOne: ImageConstant.imgTelevision.obs,
        stepsTwo: "Steps".obs,
        elevenThousandEightHundredFiftySeven: "11,857".obs,
        time: "updated 15 min ago".obs),
    DashboardgridItemModel(
        stepsOne: ImageConstant.imgCalendar.obs,
        stepsTwo: "Cycle tracking".obs,
        time: "updated 30m ago".obs),
    DashboardgridItemModel(
        stepsOne: ImageConstant.imgFloatingIcon.obs,
        stepsTwo: "Sleep".obs,
        time: "updated a day ago".obs),
    DashboardgridItemModel(
        stepsOne: ImageConstant.imgSettings.obs,
        stepsTwo: "Nutrition".obs,
        time: "updated 5 min ago".obs)
  ]);
}
