import 'package:fluttertoast/fluttertoast.dart';

import '../../widgets/custom_drop_down.dart';
import '../search_screen/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:salesforce_app/core/app_export.dart';
import 'package:salesforce_app/widgets/custom_button.dart';
import 'package:salesforce_app/widgets/custom_text_form_field.dart';
import 'models/search_item_model.dart';

class SearchScreen extends GetWidget<SearchController> {
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Padding(
                          padding: getPadding(left: 16, top: 16, right: 16),
                          child: Align(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtBack();
                                      },
                                      child: Padding(
                                          padding: getPadding(
                                              left: 5, top: 32, right: 16),
                                          child:
                                              Icon(Icons.arrow_back_rounded))),
                                  Padding(
                                      padding: getPadding(
                                          left: 130, top: 32, right: 1),
                                      child: Text("Search".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtSFProTextMedium20
                                              .copyWith())),
                                ],
                              ))),
                      Container(
                          margin: getMargin(top: 32, right: 16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(top: 36,left: 12),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomDropDown(
                                                width: 400,
                                                focusNode: FocusNode(),
                                                icon: Container(
                                                  margin: getMargin(all: 10),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown,
                                                  ),
                                                ),
                                                hintText:
                                                    "msg_select_status_type".tr,
                                                margin: getMargin(
                                                  top: 8,
                                                ),
                                                items: controller.searchModelObj
                                                    .value.dropdownItemList,
                                                onChanged: (value) {
                                                  onTapBtnUpdatesubscrip(
                                                      value.title == null
                                                          ? 'open'
                                                          : value.title);
                                                },
                                              ),
                                             
                                            ])))
                              ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(
                              left: 10, top: 44, bottom: 20, right: 10),
                          decoration: AppDecoration.fillGray50,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: getMargin(
                                      top: 36,
                                    ),
                                    padding: getPadding(
                                      left: 1,
                                      top: 16,
                                      right: 4,
                                      bottom: 19,
                                    ),
                                    decoration: AppDecoration.fillBlue,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                          ),
                                          child: Text(
                                            "lbl_title".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSFProTextMedium14
                                                .copyWith(),
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
                                            style: AppStyle.txtSFProTextMedium14
                                                .copyWith(),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(right: 15),
                                          child: Text(
                                            "lbl_status".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtSFProTextMedium14
                                                .copyWith(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: getPadding(
                                      left: 2,
                                      top: 12,
                                      right: 14,
                                    ),
                                    child: Obx(() => ListView.builder(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller.searchModelObj
                                            .value.searchItemList.length,
                                        itemBuilder: (context, index) {
                                          SearchItemModel model = controller
                                              .searchModelObj
                                              .value
                                              .searchItemList[index];
                                          return SearchItemWidget(model);
                                        }))),
                              ]))
                    ]))))));
  }

  void onTapBtnUpdatesubscrip(value) {
    controller.callFetch(
        successCall: _onFetchSuccess,
        errCall: _onFetchError,
        searchText: value);
  }

  void _onFetchSuccess() {
    List<SearchItemModel> searchItemModelList = [];
    if (controller.getResp!.records! != null &&
        controller.getResp!.records!.isNotEmpty) {
      for (var element in controller.getResp!.records!) {
        var searchItemModel = SearchItemModel();
        searchItemModel.itemTwoTxt.value = element.name!.toString();
        searchItemModel.itemTypeOneTxt.value = element.descriptionC!.toString();
        searchItemModel.priceTxt.value = element.statusC!.toString();
        searchItemModelList.add(searchItemModel);
      }
    } else {
      Get.defaultDialog(
          onConfirm: () => Get.offAndToNamed(AppRoutes.homeScreen),
          title: "lbl_alert".tr,
          middleText: "msg_record_not_found".tr);
    }
    controller.searchModelObj.value.searchItemList.value = searchItemModelList;
  }

  void _onFetchError() {}
  onTapTxtBack() {
    Get.offAndToNamed(AppRoutes.homeScreen);
  }
}
