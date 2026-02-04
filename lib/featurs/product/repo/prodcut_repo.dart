import 'package:dio/dio.dart';
import 'package:firstapp/featurs/product/data/model/product_model.dart';

class ProdcutRepo {
  // static Future getProduct() async {
  //   try {
  //     var url = Uri.parse('https://api.escuelajs.co/api/v1/products');
  //     var response = await http.get(url);
  //     if (response.statusCode == 200) {
  //       print('response $response');
  //     } else {}
  //   } on Exception catch (e) {
  //     print(e);
  //   }
  //  }
  static final dio = Dio();
  static Future<List<ProductModel>> getProduct() async {
    try {
      List<ProductModel> items =[];
      var response = await dio.get('https://fakestoreapi.com/products');
      if (response.statusCode == 200) {
        List data = response.data;
        for(var item in data){
          final product = ProductModel.fromJson(item);
          items.add(product);
        }
        return items;
      } else {
        print('filed');
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
