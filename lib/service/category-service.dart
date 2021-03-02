import 'package:cubetiq_computer_api/config/http-config.dart';
import 'package:cubetiq_computer_api/model/category-model.dart';

class CategoryService {
  Future<CategoryResponse> getAllCategoryService() async {
    String url = "http://computer-api.osa.cubetiqs.com/api/frontend/categories";
    CategoryResponse result = await getDioInstance()
        .get(url)
        .then((v) => CategoryResponse.fromJson(v.data))
        .catchError((e) => null);
    return result;
  }
}
