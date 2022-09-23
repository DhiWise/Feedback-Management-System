import '../../../core/constants/tokenConstant.dart';
import '/core/app_export.dart';
import 'package:salesforce_app/presentation/search_screen/models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:salesforce_app/data/models//get_resp.dart';
import 'package:salesforce_app/data/apiClient/api_client.dart';

class SearchController extends GetxController {
  TextEditingController groupThirtyController = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;

  GetResp getResp = GetResp();
  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThirtyController.dispose();
  }

  void callFetch({VoidCallback? successCall, VoidCallback? errCall,dynamic searchText}) async {
    return Get.find<ApiClient>().fetch(
        headers: {
          'Authorization':
              'Bearer ${TokenConstant.SalesforceToken}',
        },
        searchText:searchText,
        onSuccess: (resp) {
          onFetchSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchError(err);
          if (errCall != null) {
            errCall();
          }
        });
  }

  void onFetchSuccess(var response) {
    getResp = GetResp.fromJson(response);
  }

  void onFetchError(var err) {
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
