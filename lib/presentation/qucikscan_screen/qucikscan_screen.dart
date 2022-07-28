import 'controller/qucikscan_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:grabbit/widgets/custom_button.dart';

class QucikscanScreen extends GetWidget<QucikscanController> {
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Container(
                          width: double.infinity,
                          margin: getMargin(left: 18, top: 135, right: 17),
                          decoration: AppDecoration.fillBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(left: 5, top: 50),
                                    child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle2362,
                                        height: getVerticalSize(281.00),
                                        width: getHorizontalSize(325.00))),
                                Padding(
                                    padding: getPadding(
                                        left: 121,
                                        top: 43,
                                        right: 121,
                                        bottom: 27),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgCameraicon,
                                        height: getVerticalSize(77.00),
                                        width: getHorizontalSize(82.00)))
                              ])),
                      CustomButton(
                          width: 267,
                          text: "lbl_next".tr,
                          margin: getMargin(
                              left: 18, top: 135, right: 18, bottom: 20))
                    ]))))));
  }

  onTapImgCameraicon() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapBtnNext() {
    Get.toNamed(AppRoutes.quickRabbitGeneratedInfoScreen);
  }
}
