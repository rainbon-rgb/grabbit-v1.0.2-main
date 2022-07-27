// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      default:
        return getPadding(
          all: 9,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineAmberA100:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlack900:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineAmberA1001_2:
        return ColorConstant.amber400;
      case ButtonVariant.OutlineBlack9001_2:
        return null;
      default:
        return ColorConstant.amber400;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineAmberA100:
        return Border.all(
          color: ColorConstant.amberA100,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineBlack900:
        return Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlack9001_2:
        return Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineAmberA1001_2:
        return Border.all(
          color: ColorConstant.amberA100,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.FillAmber400:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.85,
          ),
        );
      case ButtonShape.RoundedBorder26:
        return BorderRadius.circular(
          getHorizontalSize(
            26.58,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.30,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9001_2:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              6,
              6,
            ),
          )
        ];
      case ButtonVariant.FillAmber400:
      case ButtonVariant.OutlineAmberA100:
      case ButtonVariant.OutlineBlack900:
      case ButtonVariant.OutlineAmberA1001_2:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.MontserratRomanMedium20:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.MontserratRomanMedium15:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoRomanMedium18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            23,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder20,
  RoundedBorder16,
  RoundedBorder26,
}
enum ButtonPadding {
  PaddingAll9,
  PaddingAll16,
}
enum ButtonVariant {
  FillAmber400,
  OutlineAmberA100,
  OutlineBlack900,
  OutlineBlack9001_2,
  OutlineAmberA1001_2,
}
enum ButtonFontStyle {
  MontserratRomanMedium23,
  MontserratRomanMedium20,
  MontserratRomanMedium15,
  RobotoRomanMedium18,
}
