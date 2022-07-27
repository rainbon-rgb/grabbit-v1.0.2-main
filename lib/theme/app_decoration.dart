import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtOutlineGray500 => BoxDecoration(
        color: ColorConstant.amberA100,
        border: Border.all(
          color: ColorConstant.gray500,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack90012 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: ColorConstant.whiteA7007c,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              3,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineBlack9001e12 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black9001e,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.bluegray100,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.gray300,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineBlack9001e => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black9001e,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillAmberA100 => BoxDecoration(
        color: ColorConstant.amberA100,
      );
  static BoxDecoration get fillAmber400 => BoxDecoration(
        color: ColorConstant.amber400,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5.00,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius circleBorder41 = BorderRadius.circular(
    getHorizontalSize(
      41.00,
    ),
  );

  static BorderRadius circleBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30.24,
    ),
  );

  static BorderRadius customBorderTL10 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        10.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        10.00,
      ),
    ),
  );

  static BorderRadius txtRoundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );
}
