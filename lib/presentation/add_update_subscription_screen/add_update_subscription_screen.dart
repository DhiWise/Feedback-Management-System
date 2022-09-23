import 'package:salesforce_app/core/constants/tokenConstant.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_drop_down.dart';
import 'controller/add_update_subscription_controller.dart';
import 'package:flutter/material.dart';
import 'package:salesforce_app/core/app_export.dart';
import 'package:salesforce_app/widgets/custom_button.dart';
import 'package:salesforce_app/widgets/custom_text_form_field.dart';
import 'package:salesforce_app/data/models/feedbackC/post_feedback_c_req.dart';
import 'package:salesforce_app/data/models/create/post_create_req.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddUpdateSubscriptionScreen
    extends GetWidget<AddUpdateSubscriptionController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    width: size.width,
                    child: SingleChildScrollView(
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 14, top: 32, right: 14),
                                  child: Text("Add Feedback to Salesforce".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtSFProTextMedium20
                                          .copyWith()))),
                          Padding(
                              padding: getPadding(left: 16, top: 32, right: 16),
                              child: Text("lbl_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProTextSemibold14
                                      .copyWith(height: 1.43))),
                          CustomTextFormField(
                              width: 396,
                              focusNode: FocusNode(),
                              controller: controller.groupThirtyController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(left: 14, top: 8, right: 14),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "msg_email".tr;
                                }
                                return null;
                              },
                              alignment: Alignment.center),
                          Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: Text("lbl_title".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProTextSemibold14
                                      .copyWith(height: 1.43))),
                          CustomTextFormField(
                              width: 396,
                              focusNode: FocusNode(),
                              controller: controller.groupFortyController,
                              hintText: "lbl_title".tr,
                              margin: getMargin(left: 14, top: 8, right: 14),
                              alignment: Alignment.center,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "msg_text".tr;
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: Text("lbl_description".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProTextSemibold14
                                      .copyWith(height: 1.43))),
                          CustomTextFormField(
                              width: 396,
                              focusNode: FocusNode(),
                              controller: controller.zeroController,
                              hintText: "lbl_description".tr,
                              margin: getMargin(left: 16, top: 12, bottom: 12),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "msg_text".tr;
                                }
                                return null;
                              }),
                          Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: Text("lbl_tech".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProTextSemibold14
                                      .copyWith(height: 1.43))),
                          CustomDropDown(
                            width: 400,
                            focusNode: FocusNode(),
                            icon: Container(
                              margin: getMargin(all: 10),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgArrowdown,
                              ),
                            ),
                            hintText: "lbl_tech".tr,
                            margin: getMargin(
                              top: 8,
                              left: 16
                            ),
                            items: controller.addUpdateSubscriptionModelObj
                                .value.dropdownItemList,
                            onChanged: (value) {
                              controller.zeroOneController.text =
                                  value.title == null ? 'Flutter' : value.title;
                            },
                          ),
                          CustomButton(
                              width: 396,
                              text: "Add",
                              margin: getMargin(
                                  left: 14, top: 27, right: 14, bottom: 20),
                              onTap: onTapBtnUpdatesubscrip,
                              alignment: Alignment.center)
                        ])))))));
  }

  void onTapBtnUpdatesubscrip() {
    PostFeedbackCReq postFeedbackCReq = PostFeedbackCReq(
      name: controller.groupFortyController.text,
      emailC: controller.groupThirtyController.text,
      descriptionC: controller.zeroController.text,
      statusC: 'open',
      techC: controller.zeroOneController.text,
    );
    controller.callCreateFeedbackC(
      postFeedbackCReq.toJson(),
      successCall: _onCreateFeedbackCSuccess,
      errCall: _onCreateFeedbackCError,
    );
  }

  void _onCreateFeedbackCSuccess() {
    PostCreateReq postCreateReq = PostCreateReq(
      apiKey: TokenConstant.apikey,
      boardID: TokenConstant.boardid,
      authorID: TokenConstant.authorid,
      title: controller.groupFortyController.text,
      details: controller.zeroController.text,
      name: controller.zeroOneController.text,
    );
    controller.callCreateCreate(
      postCreateReq.toJson(),
      successCall: _onCreateCreateSuccess,
      errCall: _onCreateCreateError,
    );
  }

  void _onCreateCreateSuccess() {
    Get.offAllNamed(AppRoutes.homeScreen);
  }

  void _onCreateCreateError() {}
  void _onCreateFeedbackCError() {
    Fluttertoast.showToast(
      msg: "lbl_failed".tr,
    );
  }
}
