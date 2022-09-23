
import '/core/app_export.dart';
import 'package:salesforce_app/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:salesforce_app/data/models/boardsList/post_boards_list_resp.dart';
import 'package:salesforce_app/data/apiClient/api_client.dart';
import 'package:salesforce_app/data/models/list/post_list_resp.dart';
import '../models/home_item_model.dart';
import 'package:salesforce_app/core/constants/tokenConstant.dart';


class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  PostBoardsListResp postBoardsListResp = PostBoardsListResp();

  PostListResp postListResp = PostListResp();

  @override
  void onReady() {
    super.onReady();
    Map postBoardsListReq = {
      'apiKey': TokenConstant.apikey,
    };
    this.callCreateBoardsList(
      postBoardsListReq,
      successCall: _onCreateBoardsListSuccess,
      errCall: _onCreateBoardsListError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callCreateBoardsList(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createBoardsList(
        headers: {
          'content-type': 'application/x-www-form-urlencoded',
        },
        onSuccess: (resp) {    
          onCreateBoardsListSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateBoardsListError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateBoardsListSuccess(var response) {
    postBoardsListResp = PostBoardsListResp.fromJson(response);
  }

  void onCreateBoardsListError(var err) {
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

  void _onCreateBoardsListSuccess() {
    var boardId;
    Get.find<PrefUtils>().setBoradList(postBoardsListResp.boards!);
    var result = Get.find<PrefUtils>().getBoradList();
    for (var index in result!) {
      boardId = index.name == 'Feedback' ? index.id : null;
    }
    Map postListReq = {
      'apiKey': TokenConstant.apikey,
      'boardID': boardId,
    };
    this.callCreateList(
      postListReq,
      successCall: _onCreateListSuccess,
      errCall: _onCreateListError,
    );
  }

  void callCreateList(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createList(
        headers: {
          'content-type': 'application/x-www-form-urlencoded',
        },
        onSuccess: (resp) {
          onCreateListSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateListError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateListSuccess(var response) {
    postListResp = PostListResp.fromJson(response);
  }

  void onCreateListError(var err) {
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

  void _onCreateListSuccess() {
    List<HomeItemModel> homeItemModelList = [];
    if (postListResp!.posts! != null && postListResp!.posts!.isNotEmpty) {
      for (var element in postListResp!.posts!) { 
        var homeItemModel = HomeItemModel();
        homeItemModel.itemOneTxt.value = element.title!.toString();
        homeItemModel.itemTypeOneTxt.value = element.details!.toString();
        homeItemModel.priceTxt.value = element.status!=null ? element.status!.toString():'open';
        homeItemModelList.add(homeItemModel);
      }
    }
    homeModelObj.value.homeItemList.value = homeItemModelList;
  }

  void _onCreateListError() {}
  void _onCreateBoardsListError() {}
}
