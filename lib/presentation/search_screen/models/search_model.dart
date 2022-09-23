import 'package:get/get.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'search_item_model.dart';

class SearchModel {
  RxList<SearchItemModel> searchItemList = RxList.filled(2, SearchItemModel());
   RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "open",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "planned",
    ),
    SelectionPopupModel(
      id: 3,
      title: "completed",
    )
  ].obs;
}
