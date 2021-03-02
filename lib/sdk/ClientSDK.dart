import 'package:cubetiq_computer_api/model/category-model.dart';
import 'package:cubetiq_computer_api/service/category-service.dart';

class ClientSDK {
  ClientSDK._privateConstructor();

  static final ClientSDK _instance = ClientSDK._privateConstructor();

  static ClientSDK get instance => _instance;

  final CategoryService _categoryService = CategoryService();

  Future<CategoryResponse> clientGetAllCategoryService() async {
    return await _categoryService.getAllCategoryService();
  }
}
