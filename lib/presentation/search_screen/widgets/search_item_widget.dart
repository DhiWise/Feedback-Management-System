import '../controller/search_controller.dart';
import '../models/search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:salesforce_app/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.searchItemModelObj);

  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchController>();

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
              child: Obx(
                () => Text(
                  searchItemModelObj.itemTwoTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextRegular14Bluegray900.copyWith(),
                ),
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(175),
            child: Padding(
              padding: getPadding(
                bottom: 1,
              ),
              child: Obx(
                () => Text(
                  searchItemModelObj.itemTypeOneTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextRegular14Bluegray900.copyWith(),
                ),
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(55),
            child: Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Obx(
                () => Text(
                  searchItemModelObj.priceTxt.value,
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
