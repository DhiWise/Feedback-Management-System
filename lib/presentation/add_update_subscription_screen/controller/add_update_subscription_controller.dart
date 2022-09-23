import '../../../core/constants/tokenConstant.dart';
import '/core/app_export.dart';
import 'package:salesforce_app/presentation/add_update_subscription_screen/models/add_update_subscription_model.dart';
import 'package:flutter/material.dart';
import 'package:salesforce_app/data/models/feedbackC/post_feedback_c_resp.dart';
import 'package:salesforce_app/data/apiClient/api_client.dart';
import 'package:salesforce_app/data/models/create/post_create_resp.dart';

class AddUpdateSubscriptionController extends GetxController {
  TextEditingController groupThirtyController = TextEditingController();

  TextEditingController groupFortyController = TextEditingController();

  TextEditingController zeroController = TextEditingController();

  TextEditingController zeroOneController = TextEditingController();

  TextEditingController groupThirtyOneController = TextEditingController();

  Rx<AddUpdateSubscriptionModel> addUpdateSubscriptionModelObj =
      AddUpdateSubscriptionModel().obs;

  PostFeedbackCResp postFeedbackCResp = PostFeedbackCResp();
  PostCreateResp postCreateResp = PostCreateResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThirtyController.dispose();
    groupFortyController.dispose();
    zeroController.dispose();
    zeroOneController.dispose();
    groupThirtyOneController.dispose();
  }

  void callCreateFeedbackC(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createFeedbackC(
        headers: {
          'Authorization':
              'Bearer ${TokenConstant.SalesforceToken}',
        },
        onSuccess: (resp) {
          onCreateFeedbackCSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateFeedbackCError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateFeedbackCSuccess(var response) {
    postFeedbackCResp = PostFeedbackCResp.fromJson(response);
  }

  void onCreateFeedbackCError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
  void callCreateCreate(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createCreate(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateCreateSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateCreateError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateCreateSuccess(var response) {
    postCreateResp = PostCreateResp.fromJson(response);
  }

  void onCreateCreateError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
