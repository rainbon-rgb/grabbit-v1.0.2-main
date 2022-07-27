import 'dart:io';
import 'controller/scan_controller.dart';
import 'package:flutter/material.dart';
import 'package:grabbit/core/app_export.dart';
import 'package:image_picker/image_picker.dart';
import 'package:grabbit/widgets/custom_button.dart';


class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);
  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  File? imageFile;

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
                    height: getVerticalSize(
                      434.00,
                    ),
                    width: getHorizontalSize(
                      326.00,
                    ),
                    margin: getMargin(
                      left: 17,
                      top: 135,
                      right: 17,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              434.00,
                            ),
                            width: getHorizontalSize(
                              325.00,
                            ),
                            margin: getMargin(
                              left: 1,
                            ),
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.bluegray100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 121,
                                        top: 27,
                                        right: 121,
                                        bottom: 27,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgCameraicon,
                                        height: getVerticalSize(
                                          77.00,
                                        ),
                                        width: getHorizontalSize(
                                          82.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: getPadding(
                              top: 26,
                              right: 1,
                              bottom: 26,
                            ),

                            child: CommonImageView(
                                file: imageFile,
                                imagePath: ImageConstant.imgRectangle2362,
                                height: getVerticalSize(
                                  281.00,
                                ),
                                width: getHorizontalSize(
                                  325.00,
                                ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    width: 267,
                    text: "Next",
                    margin: getMargin(
                      left: 17,
                      top: 135,
                      right: 17,
                      bottom: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
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

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
        source: source,
        maxWidth: 640,
        maxHeight: 480,
        imageQuality: 70 //0 - 100
        );

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}

  onTap() {
    Get.toNamed(AppRoutes.homepageScreen);
  }
