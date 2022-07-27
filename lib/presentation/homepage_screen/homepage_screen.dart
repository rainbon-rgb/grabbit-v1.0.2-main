import 'controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/widgets/custom_button.dart';

class HomepageScreen extends GetWidget<HomepageController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Padding(
                          padding: getPadding(left: 23, top: 10, right: 23),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgGrabbitlogo,
                              height: getVerticalSize(68.00),
                              width: getHorizontalSize(170.00))),
                      Container(
                          margin: getMargin(
                              left: 23, top: 91, right: 22, bottom: 20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapImgAddrabbitbutt();
                                              },
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 2),
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgAddrabbitbutt,
                                                      height: getVerticalSize(
                                                          139.00),
                                                      width: getHorizontalSize(
                                                          143.00)))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapImgScanarabbitb();
                                              },
                                              child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgScanarabbitb,
                                                  height:
                                                      getVerticalSize(141.00),
                                                  width: getHorizontalSize(
                                                      147.00)))
                                        ])),
                                CustomButton(
                                    width: 302,
                                    text: "lbl_check_rabbits".tr,
                                    margin:
                                        getMargin(left: 6, top: 221, right: 6),
                                    variant: ButtonVariant.OutlineBlack9001_2,
                                    shape: ButtonShape.RoundedBorder26,
                                    padding: ButtonPadding.PaddingAll16,
                                    fontStyle:
                                        ButtonFontStyle.RobotoRomanMedium18),
                                CustomButton(
                                    width: 302,
                                    text: "lbl_sell_a_rabbit2".tr,
                                    margin:
                                        getMargin(left: 6, top: 20, right: 6),
                                    variant: ButtonVariant.OutlineAmberA1001_2,
                                    shape: ButtonShape.RoundedBorder26,
                                    padding: ButtonPadding.PaddingAll16,
                                    fontStyle:
                                        ButtonFontStyle.RobotoRomanMedium18)
                              ]))
                    ]))))));
  }

  onTapImgAddrabbitbutt() {
    Get.toNamed(AppRoutes.scanScreen);
  }

  onTapImgScanarabbitb() {
    Get.toNamed(AppRoutes.qucikscanScreen);
  }
}
