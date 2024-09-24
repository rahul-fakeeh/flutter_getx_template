import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarTrailingCircleimage extends StatelessWidget {
  AppbarTrailingCircleimage({Key? key, this.imagePath, this.onTap, this.margin})
      : super(
          key: key,
        );

  final String? imagePath;

  final Function? onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        borderRadius: BorderRadius.circular(
          22.h,
        ),
        onTap: () {
          onTap?.call();
        },
        child: CustomImageView(
          imagePath: imagePath!,
          height: 32.h,
          width: 32.h,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            22.h,
          ),
        ),
      ),
    );
  }
}
