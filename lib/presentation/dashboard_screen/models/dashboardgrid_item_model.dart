import '../../../core/app_export.dart';

/// This class is used in the [dashboardgrid_item_widget] screen.

// ignore_for_file: must_be_immutable
class DashboardgridItemModel {
  DashboardgridItemModel(
      {this.stepsOne,
      this.stepsTwo,
      this.elevenThousandEightHundredFiftySeven,
      this.time,
      this.id}) {
    stepsOne = stepsOne ?? Rx(ImageConstant.imgTelevision);
    stepsTwo = stepsTwo ?? Rx("Steps");
    elevenThousandEightHundredFiftySeven =
        elevenThousandEightHundredFiftySeven ?? Rx("11,857");
    time = time ?? Rx("updated 15 min ago");
    id = id ?? Rx("");
  }

  Rx<String>? stepsOne;

  Rx<String>? stepsTwo;

  Rx<String>? elevenThousandEightHundredFiftySeven;

  Rx<String>? time;

  Rx<String>? id;
}
