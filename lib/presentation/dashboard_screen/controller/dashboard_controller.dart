import '../../../core/app_export.dart';
import '../models/dashboard_initial_model.dart';
import '../models/dashboard_model.dart';

/// A controller class for the DashboardScreen.
///
/// This class manages the state of the DashboardScreen, including the
/// current dashboardModelObj
class DashboardController extends GetxController {
  Rx<DashboardModel> dashboardModelObj = DashboardModel().obs;

  Rx<DashboardInitialModel> dashboardInitialModelObj =
      DashboardInitialModel().obs;
}
