import 'package:crafty_bay/data/models/network_response.dart';
import 'package:crafty_bay/data/models/product_list_model.dart';
import 'package:crafty_bay/data/models/product_model.dart';
import 'package:crafty_bay/data/services/network_caller.dart';
import 'package:crafty_bay/data/utils/urls.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProductListByRemarkController extends GetxController {
  bool _popularProductInProgress = false;

  bool _newProductInProgress = false;

  bool _specialProductInProgress = false;

  bool get popularProductInProgress => _popularProductInProgress;

  bool get newProductInProgress => _newProductInProgress;

  bool get specialProductInProgress => _specialProductInProgress;

  List<ProductModel> _popularProductList = [];
  List<ProductModel> _newProductList = [];
  List<ProductModel> _specialProductList = [];

  List<ProductModel> get popularProductList => _popularProductList;

  List<ProductModel> get newProductList => _newProductList;

  List<ProductModel> get specialProductList => _specialProductList;

  String? _popularMessageError;
  String? _newMessageError;
  String? _specialMessageError;

  String? get popularErrorMessage => _popularMessageError;

  String? get newErrorMessage => _newMessageError;

  String? get specialErrorMessage => _specialMessageError;

  Future<bool> getProductByRemark(String remark) async {
    bool isSuccess = false;
    if (remark == "popular") {
      _popularProductInProgress = true;
    } else if (remark == "new") {
      _newProductInProgress = true;
    } else {
      _specialProductInProgress = true;
    }
    update();
    final NetworkResponse response = await Get.find<NetworkCaller>().getRequest(
      url: Urls.productListByRemark(remark),
    );
    if (response.isSuccess) {
      if (remark == "popular") {
        _popularMessageError = null;
        _popularProductList =
            ProductListModel.fromJson(response.responseData).productList ?? [];
      } else if (remark == "new") {
        _newMessageError = null;
        _newProductList =
            ProductListModel.fromJson(response.responseData).productList ?? [];
      } else {
        _specialMessageError = null;
        _specialProductList =
            ProductListModel.fromJson(response.responseData).productList ?? [];
      }
      isSuccess = true;
    } else {
      if (remark == "popular") {
        _popularMessageError = response.errorMessage;
      } else if (remark == "new") {
        _newMessageError = response.errorMessage;
      } else {
        _specialMessageError = response.errorMessage;
      }
    }
    if (remark == "popular") {
      _popularProductInProgress = false;
    } else if (remark == "new") {
      _newProductInProgress = false;
    } else {
      _specialProductInProgress = false;
    }
    update();
    return isSuccess;
  }
}
