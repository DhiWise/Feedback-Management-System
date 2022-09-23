import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:salesforce_app/core/app_export.dart';
import 'package:salesforce_app/widgets/custom_button.dart';

class HomeScreen extends GetWidget<HomeController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 12, right: 16),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgGroup47,
                                  height: getVerticalSize(42.00),
                                  width: getHorizontalSize(136.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(left: 16, top: 32, right: 16),
                            child: Text("msg_home".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style:
                                    AppStyle.txtSFProTextMedium20.copyWith()),
                          )),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtSubscriptions();
                              },
                              child: Padding(
                                  padding:
                                      getPadding(left: 16, top: 32, right: 16),
                                  child: Icon(Icons.search)))),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: getMargin(
                            top: 36,
                          ),
                          padding: getPadding(
                            left: 9,
                            top: 16,
                            right: 8,
                            bottom: 19,
                          ),
                          decoration: AppDecoration.fillBlue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                ),
                                child: Text(
                                  "lbl_title".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtSFProTextMedium14.copyWith(),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                ),
                                child: Text(
                                  "lbl_description".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtSFProTextMedium14.copyWith(),
                                ),
                              ),
                              Padding(
                                padding: getPadding(right: 15),
                                child: Text(
                                  "lbl_status".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtSFProTextMedium14.copyWith(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 9,
                          top: 22,
                          right: 14,
                        ),
                        child: Obx(
                          () => ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: controller
                                .homeModelObj.value.homeItemList.length,
                            itemBuilder: (context, index) {
                              HomeItemModel model = controller
                                  .homeModelObj.value.homeItemList[index];
                              return HomeItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            onTapTxtAdd();
                          },
                          child: CustomButton(
                            width: 396,
                            text: "lbl_add".tr,
                            margin: getMargin(
                              top: 250,
                            ),
                          )
                          ),
                    ]))))));
  }

  onTapTxtSubscriptions() {
    Get.offAndToNamed(AppRoutes.searchScreen);
  }

  onTapTxtAdd() {
    Get.offAndToNamed(AppRoutes.addUpdateSubscriptionScreen);
  }
}
