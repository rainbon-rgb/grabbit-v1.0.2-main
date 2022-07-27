import 'controller/qr_code_generation_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/widgets/custom_button.dart';

class QrCodeGenerationScreen extends GetWidget<QrCodeGenerationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 12,
                        top: 18,
                        right: 12,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgBack,
                        height: getVerticalSize(
                          23.00,
                        ),
                        width: getHorizontalSize(
                          25.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        292.00,
                      ),
                      width: getHorizontalSize(
                        248.00,
                      ),
                      margin: getMargin(
                        left: 12,
                        top: 76,
                        right: 12,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.amberA100,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        40.00,
                      ),
                      width: getHorizontalSize(
                        267.00,
                      ),
                      margin: getMargin(
                        left: 12,
                        top: 145,
                        right: 12,
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              41.00,
                            ),
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 74,
                                  top: 12,
                                  right: 74,
                                  bottom: 12,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgArrowdown,
                                  height: getVerticalSize(
                                    13.00,
                                  ),
                                  width: getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                              ),
                            ),
                            CustomButton(
                              width: 267,
                              text: "lbl_download".tr,
                              alignment: Alignment.centerLeft,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 267,
                    text: "lbl_done".tr,
                    margin: getMargin(
                      left: 12,
                      top: 25,
                      right: 12,
                      bottom: 20,
                    ),
                    variant: ButtonVariant.OutlineAmberA100,
                    fontStyle: ButtonFontStyle.MontserratRomanMedium20,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
