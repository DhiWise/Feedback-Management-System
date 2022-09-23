import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:salesforce_app/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.homeItemModelObj);

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 6.88,
        bottom: 6.88,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: getHorizontalSize(160),
            child: Padding(
              padding: getPadding(
                bottom: 1,
              ),
              child: 
                Obx(
                  () => Text(
                    homeItemModelObj.itemOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextRegular14Bluegray900.copyWith(),
                  ),
                ),
            ),
          ),
          Container(
            width: getHorizontalSize(180),
            child: Padding(
              padding: getPadding(
                bottom: 1,
              ),
               child: Obx(
                    () => Text(
                      homeItemModelObj.itemTypeOneTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextRegular14Bluegray900.copyWith(),
                    ),
                  ),
            ),
          ),
          Container(
            width: getHorizontalSize(50),
            child: Padding(
              padding: getPadding(
                top: 1,
              ),
             child: Obx(
                    () => Text(
                      homeItemModelObj.priceTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextRegular14Bluegray900.copyWith(),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
