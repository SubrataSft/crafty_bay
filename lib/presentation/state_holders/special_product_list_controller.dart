import 'package:crafty_bay/data/models/network_response.dart';
import 'package:crafty_bay/data/models/product_list_model.dart';
import 'package:crafty_bay/data/models/product_model.dart';
import 'package:crafty_bay/data/services/network_caller.dart';
import 'package:crafty_bay/data/utils/urls.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SpecialProductListController extends GetxController {
  bool _inProgress = false;



  bool get inProgress => _inProgress;


  List<ProductModel> _productList = [];

  List<ProductModel> get productList => _productList;

  String? _messageError;

  String? get messageError => _messageError;


  Future<bool> getSpecialProductList() async {
    bool isSuccess = false;
   _inProgress = true;
    update();
    final NetworkResponse response = await Get.find<NetworkCaller>().getRequest(
      url: Urls.productListByRemark("special"),
    );
    if (response.isSuccess) {
      _productList =
          ProductListModel.fromJson(response.responseData).productList ?? [];
      isSuccess = true;
      _messageError = null;
    } else {
     _messageError = response.errorMessage;
    }
   _inProgress = false;
    update();
    return isSuccess;
  }
}
