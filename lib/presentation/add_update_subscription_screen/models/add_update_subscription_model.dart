import 'package:get/get.dart';
import 'package:salesforce_app/data/models/selectionPopupModel/selection_popup_model.dart';

class AddUpdateSubscriptionModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Flutter",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "ReactJs",
    ),
  ].obs;
}
