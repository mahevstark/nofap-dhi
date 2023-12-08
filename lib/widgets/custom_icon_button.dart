import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.blueGray90003,
                  borderRadius: BorderRadius.circular(28.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get outlineBlackTL28 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(28.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnError => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onError.withOpacity(0.12),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(16.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.12),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineLightBlueA => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.lightBlueA200.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainerTL12 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(12.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(0.12),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
}
