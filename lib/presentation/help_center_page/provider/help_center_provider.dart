import 'package:flutter/material.dart';
import 'package:nofapp/core/app_export.dart';
import 'package:nofapp/presentation/help_center_page/models/help_center_model.dart';

/// A provider class for the HelpCenterPage.
///
/// This provider manages the state of the HelpCenterPage, including the
/// current helpCenterModelObj
class HelpCenterProvider extends ChangeNotifier {
  HelpCenterModel helpCenterModelObj = HelpCenterModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in helpCenterModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in helpCenterModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in helpCenterModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected3(dynamic value) {
    for (var element in helpCenterModelObj.dropdownItemList3) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected4(dynamic value) {
    for (var element in helpCenterModelObj.dropdownItemList4) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected5(dynamic value) {
    for (var element in helpCenterModelObj.dropdownItemList5) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
