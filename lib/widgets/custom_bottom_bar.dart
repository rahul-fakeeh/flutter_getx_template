import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Overview, Explore, Sharing }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({Key? key, this.onChanged})
      : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavOverview,
      activeIcon: ImageConstant.imgNavOverview,
      title: "lbl_overview".tr,
      type: BottomBarEnum.Overview,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavExplore,
      activeIcon: ImageConstant.imgNavExplore,
      title: "lbl_explore".tr,
      type: BottomBarEnum.Explore,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavSharing,
      activeIcon: ImageConstant.imgNavSharing,
      title: "lbl_sharing".tr,
      type: BottomBarEnum.Sharing,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.h),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0X16171A1F),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          )
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 44.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].icon,
                      height: 24.h,
                      width: 24.h,
                      color: Color(0XFF565E6C),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.bodySmallGray700.copyWith(
                          color: Color(0XFF565E6C),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.h,
                    width: 24.h,
                    color: Color(0XFF636AE8),
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.labelMedium!.copyWith(
                      color: Color(0XFF636AE8),
                    ),
                  )
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
